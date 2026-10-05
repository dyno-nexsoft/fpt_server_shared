import 'package:freezed_annotation/freezed_annotation.dart';

import 'work_calendar.dart';

part 'job_timing.freezed.dart';
part 'job_timing.g.dart';

/// The point of a working day a job can be pinned to.
enum TimeAnchor {
  @JsonValue('work_start')
  workStart('start of the day'),
  @JsonValue('work_end')
  workEnd('end of the day'),
  @JsonValue('lunch_start')
  lunchStart('start of lunch'),
  @JsonValue('lunch_end')
  lunchEnd('end of lunch');

  const TimeAnchor(this.label);

  /// What the point is called in "at the [label]".
  final String label;
}

/// When a scheduled job runs, as a rule rather than a cron expression.
///
/// A job about working time ("the day has started", "go to lunch") says *where
/// in the working day* it belongs, and the [WorkCalendar] says when that is on
/// a given date — so moving the end of the day, or declaring a holiday, moves
/// or cancels every job pinned to it in one edit. A job that has nothing to do
/// with the working day (the nightly cleanup) runs at a fixed [time] every day.
///
/// Exactly one of [anchor] and [time] is set.
@freezed
abstract class JobTiming with _$JobTiming {
  const JobTiming._();

  const factory JobTiming({
    /// Pins the job to this point of each working day; null for a daily job.
    TimeAnchor? anchor,

    /// Minutes after [anchor] (before, when negative).
    @Default(0) int offsetMinutes,

    /// `HH:mm`, for a job that runs every day at a fixed time.
    String? time,
  }) = _JobTiming;

  factory JobTiming.fromJson(Map<String, dynamic> json) =>
      _$JobTimingFromJson(json);

  /// Runs on working days only, [offsetMinutes] after (or before, when
  /// negative) [anchor]. A day that has no such point — a half day has no
  /// lunch — has no run.
  factory JobTiming.workday(TimeAnchor anchor, {int offsetMinutes = 0}) =>
      JobTiming(anchor: anchor, offsetMinutes: offsetMinutes);

  /// Runs every day at [hour]:[minute], whatever the calendar says.
  factory JobTiming.daily(int hour, int minute) =>
      JobTiming(time: formatClock(hour * 60 + minute));

  /// Whether the working calendar decides which days this runs on.
  bool get followsCalendar => anchor != null;

  /// The minute of [day] (since midnight) this runs at, or null when it does
  /// not run that day.
  int? minuteOn(WorkCalendar calendar, DateTime day) {
    final anchor = this.anchor;
    if (anchor == null) return parseClock(time);
    final hours = calendar.planFor(day)?.hours;
    if (hours == null) return null;
    final base = switch (anchor) {
      TimeAnchor.workStart => hours.startMinutes,
      TimeAnchor.workEnd => hours.endMinutes,
      TimeAnchor.lunchStart => hours.lunchStartMinutes,
      TimeAnchor.lunchEnd => hours.lunchEndMinutes,
    };
    if (base == null) return null;
    final minute = base + offsetMinutes;
    return minute < 0 || minute >= 24 * 60 ? null : minute;
  }

  /// Whether this job is due in the minute [now] falls in.
  bool isDueAt(WorkCalendar calendar, DateTime now) =>
      minuteOn(calendar, now) == now.hour * 60 + now.minute;

  /// The first run strictly after [after], looking at most [lookaheadDays]
  /// ahead — null when the calendar leaves no such day (everything off).
  DateTime? nextRun(
    WorkCalendar calendar,
    DateTime after, {
    int lookaheadDays = 60,
  }) {
    for (var offset = 0; offset <= lookaheadDays; offset++) {
      final day = DateTime(after.year, after.month, after.day + offset);
      final minute = minuteOn(calendar, day);
      if (minute == null) continue;
      final run = DateTime(day.year, day.month, day.day, 0, minute);
      if (run.isAfter(after)) return run;
    }
    return null;
  }

  /// The rule in words, for the dashboard.
  String describe() {
    final anchor = this.anchor;
    if (anchor == null) return 'Every day at ${time ?? '—'}';
    final offset = offsetMinutes == 0
        ? ''
        : offsetMinutes > 0
        ? ' + $offsetMinutes min'
        : ' − ${-offsetMinutes} min';
    return 'Working days, at the ${anchor.label}$offset';
  }

  /// Everything wrong with this timing, in words an admin can act on.
  List<String> problems() {
    if (anchor == null) {
      return parseClock(time) == null
          ? ['A daily job needs a time like 23:00.']
          : const [];
    }
    if (time != null) {
      return [
        'A job follows the working calendar or runs at a fixed time, not both.',
      ];
    }
    if (offsetMinutes.abs() > 12 * 60) {
      return ['The offset must be within 12 hours of the point of the day.'];
    }
    return const [];
  }
}
