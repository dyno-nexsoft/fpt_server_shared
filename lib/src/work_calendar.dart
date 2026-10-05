import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_calendar.freezed.dart';
part 'work_calendar.g.dart';

/// A clock time as `HH:mm` — the one spelling the admin sees, stores and sends.
final _clock = RegExp(r'^([01]\d|2[0-3]):([0-5]\d)$');

/// Minutes since midnight for an `HH:mm` string, or null when it is not one.
int? parseClock(String? value) {
  final match = value == null ? null : _clock.firstMatch(value);
  if (match == null) return null;
  return int.parse(match.group(1)!) * 60 + int.parse(match.group(2)!);
}

/// `HH:mm` for [minutes] since midnight.
String formatClock(int minutes) {
  final h = (minutes ~/ 60).toString().padLeft(2, '0');
  final m = (minutes % 60).toString().padLeft(2, '0');
  return '$h:$m';
}

/// `yyyy-MM-dd` for the calendar date of [day] — how an exception names its day.
String dateKey(DateTime day) =>
    '${day.year.toString().padLeft(4, '0')}-'
    '${day.month.toString().padLeft(2, '0')}-'
    '${day.day.toString().padLeft(2, '0')}';

/// When a working day starts and ends, and the lunch break inside it.
///
/// Both lunch times or neither: a day without a lunch break (a half day) has
/// none, and the jobs that hang off the lunch times simply do not run on it.
@freezed
abstract class WorkHours with _$WorkHours {
  const WorkHours._();

  const factory WorkHours({
    required String start,
    required String end,
    String? lunchStart,
    String? lunchEnd,
  }) = _WorkHours;

  factory WorkHours.fromJson(Map<String, dynamic> json) =>
      _$WorkHoursFromJson(json);

  int? get startMinutes => parseClock(start);
  int? get endMinutes => parseClock(end);
  int? get lunchStartMinutes => parseClock(lunchStart);
  int? get lunchEndMinutes => parseClock(lunchEnd);

  /// Minutes actually worked: the day's length less its lunch break.
  int get workMinutes {
    final start = startMinutes ?? 0;
    final end = endMinutes ?? start;
    final lunch = (lunchStartMinutes != null && lunchEndMinutes != null)
        ? lunchEndMinutes! - lunchStartMinutes!
        : 0;
    final worked = end - start - lunch;
    return worked < 0 ? 0 : worked;
  }
}

/// The standing rule for one day of the week.
@freezed
abstract class WorkWeekday with _$WorkWeekday {
  const factory WorkWeekday({
    /// `DateTime.weekday`: 1 is Monday, 7 is Sunday.
    required int weekday,

    /// Whether this weekday is a working day at all. Its [hours] are kept when
    /// it is not, so switching it back on does not lose them.
    required bool working,
    required WorkHours hours,
  }) = _WorkWeekday;

  factory WorkWeekday.fromJson(Map<String, dynamic> json) =>
      _$WorkWeekdayFromJson(json);
}

/// One date that breaks the weekly rule: a make-up working day that falls on a
/// weekend, or a holiday that falls on a weekday.
@freezed
abstract class CalendarException with _$CalendarException {
  const factory CalendarException({
    /// `yyyy-MM-dd`.
    required String date,

    /// True: this date is worked, whatever its weekday says. False: it is a
    /// day off.
    required bool working,

    /// What it is for ("National Day", "Make-up for 2 Jan"), shown next to it.
    @Default('') String note,

    /// Hours for a worked date. Null uses the weekday's own hours, which for a
    /// Saturday make-up day is whatever Saturday is set to.
    WorkHours? hours,
  }) = _CalendarException;

  factory CalendarException.fromJson(Map<String, dynamic> json) =>
      _$CalendarExceptionFromJson(json);
}

/// What a given date turned out to be: the hours worked on it, and why it is
/// unusual when it is.
class DayPlan {
  const DayPlan({required this.hours, this.exception});

  final WorkHours hours;

  /// The exception that made this a working day, when one did.
  final CalendarException? exception;
}

/// The company's working time: which weekdays are worked and between which
/// hours, plus the individual dates that differ.
///
/// Every scheduled job that is about working time reads this instead of
/// carrying a cron expression of its own, so changing when the day starts or
/// ends — or declaring a holiday — is one edit that every job follows.
@freezed
abstract class WorkCalendar with _$WorkCalendar {
  const WorkCalendar._();

  const factory WorkCalendar({
    @Default(<WorkWeekday>[]) List<WorkWeekday> weekdays,
    @Default(<CalendarException>[]) List<CalendarException> exceptions,
  }) = _WorkCalendar;

  factory WorkCalendar.fromJson(Map<String, dynamic> json) =>
      _$WorkCalendarFromJson(json);

  /// Monday to Friday, 08:30–18:00 with lunch 12:00–13:25 — the times the
  /// reminders used to be hardcoded to. Weekends are off but keep sensible
  /// hours, so an admin turning Saturday on starts from something.
  factory WorkCalendar.standard() {
    const weekday = WorkHours(
      start: '08:30',
      end: '18:00',
      lunchStart: '12:00',
      lunchEnd: '13:25',
    );
    const weekend = WorkHours(start: '08:30', end: '12:00');
    return WorkCalendar(
      weekdays: [
        for (var day = 1; day <= 7; day++)
          WorkWeekday(
            weekday: day,
            working: day <= 5,
            hours: day <= 5 ? weekday : weekend,
          ),
      ],
    );
  }

  /// The standing rule for [weekday], falling back to the standard one if a
  /// stored calendar is missing it.
  WorkWeekday ruleFor(int weekday) =>
      weekdays.where((w) => w.weekday == weekday).firstOrNull ??
      WorkCalendar.standard().weekdays[weekday - 1];

  CalendarException? exceptionOn(DateTime day) {
    final key = dateKey(day);
    return exceptions.where((e) => e.date == key).firstOrNull;
  }

  /// The plan for [day], or null when it is not a working day.
  ///
  /// An exception wins over the weekly rule in both directions: a holiday on a
  /// Monday is off, a make-up Saturday is worked even though Saturday is not.
  DayPlan? planFor(DateTime day) {
    final rule = ruleFor(day.weekday);
    final exception = exceptionOn(day);
    if (exception != null) {
      return exception.working
          ? DayPlan(hours: exception.hours ?? rule.hours, exception: exception)
          : null;
    }
    return rule.working ? DayPlan(hours: rule.hours) : null;
  }

  /// The hours [day] runs on: its plan when it is a working day, otherwise
  /// what its weekday would be if worked. A report posted on a day off still
  /// needs a start, an end and an estimate, and the weekday's own are the
  /// plausible ones.
  WorkHours hoursOn(DateTime day) =>
      planFor(day)?.hours ?? ruleFor(day.weekday).hours;

  /// When [day]'s work starts, as a local date-time.
  DateTime startOfWorkday(DateTime day) => DateTime(
    day.year,
    day.month,
    day.day,
    0,
    hoursOn(day).startMinutes ?? 8 * 60 + 30,
  );

  /// When [day]'s work ends, as a local date-time.
  DateTime endOfWorkday(DateTime day) => DateTime(
    day.year,
    day.month,
    day.day,
    0,
    hoursOn(day).endMinutes ?? 18 * 60,
  );

  /// The hours of work to estimate for [day], rounded to the nearest half
  /// hour: 8 for the standard 08:30–18:00 with a lunch break, 3.5 for a
  /// morning-only Saturday. Never below half an hour, so a task is never
  /// estimated at nothing.
  double estimateHours(DateTime day) {
    final halves = (hoursOn(day).workMinutes / 30).round();
    return (halves < 1 ? 1 : halves) / 2;
  }

  /// Everything wrong with this calendar, in words an admin can act on — empty
  /// when it is fine. The server refuses to save a calendar that has any, and
  /// the dashboard uses the same list to hold its Save button.
  List<String> problems() {
    final found = <String>[];
    final seen = <int>{};
    for (final rule in weekdays) {
      if (rule.weekday < 1 || rule.weekday > 7) {
        found.add('Weekday ${rule.weekday} is not 1 (Monday) to 7 (Sunday).');
      } else if (!seen.add(rule.weekday)) {
        found.add('Weekday ${rule.weekday} appears twice.');
      }
      found.addAll(_hoursProblems(rule.hours, 'Weekday ${rule.weekday}'));
    }
    final dates = <String>{};
    for (final exception in exceptions) {
      final parsed = DateTime.tryParse(exception.date);
      if (parsed == null || dateKey(parsed) != exception.date) {
        found.add('"${exception.date}" is not a date written yyyy-MM-dd.');
      } else if (!dates.add(exception.date)) {
        found.add('${exception.date} is listed twice.');
      }
      final hours = exception.hours;
      if (hours != null) {
        found.addAll(_hoursProblems(hours, exception.date));
      }
    }
    return found;
  }

  static List<String> _hoursProblems(WorkHours hours, String label) {
    final start = hours.startMinutes;
    final end = hours.endMinutes;
    if (start == null || end == null) {
      return ['$label: start and end must be times like 08:30.'];
    }
    if (start >= end) return ['$label: the day must end after it starts.'];
    final lunchStart = hours.lunchStartMinutes;
    final lunchEnd = hours.lunchEndMinutes;
    if (hours.lunchStart == null && hours.lunchEnd == null) return const [];
    if (lunchStart == null || lunchEnd == null) {
      return ['$label: give both lunch times, or neither.'];
    }
    if (lunchStart >= lunchEnd || lunchStart < start || lunchEnd > end) {
      return ['$label: lunch must fall inside the working day.'];
    }
    return const [];
  }
}
