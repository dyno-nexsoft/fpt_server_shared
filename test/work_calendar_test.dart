import 'package:nexsoft_server_shared/nexsoft_server_shared.dart';
import 'package:test/test.dart';

void main() {
  // 2026-10-05 is a Monday, 2026-10-10 a Saturday, 2026-10-11 a Sunday.
  final monday = DateTime(2026, 10, 5);
  final saturday = DateTime(2026, 10, 10);
  final sunday = DateTime(2026, 10, 11);

  group('WorkCalendar.standard', () {
    final calendar = WorkCalendar.standard();

    test('works Monday to Friday and rests at the weekend', () {
      expect(calendar.planFor(monday), isNotNull);
      expect(calendar.planFor(DateTime(2026, 10, 9)), isNotNull);
      expect(calendar.planFor(saturday), isNull);
      expect(calendar.planFor(sunday), isNull);
    });

    test('keeps the times the reminders used to be hardcoded to', () {
      final hours = calendar.planFor(monday)!.hours;
      expect(hours.start, '08:30');
      expect(hours.end, '18:00');
      expect(hours.lunchStart, '12:00');
      expect(hours.lunchEnd, '13:25');
    });

    test('is valid', () => expect(calendar.problems(), isEmpty));
  });

  group('exceptions', () {
    test('a holiday on a working weekday is a day off', () {
      final calendar = WorkCalendar.standard().copyWith(
        exceptions: [
          const CalendarException(
            date: '2026-10-05',
            working: false,
            note: 'Holiday',
          ),
        ],
      );
      expect(calendar.planFor(monday), isNull);
      expect(calendar.planFor(DateTime(2026, 10, 6)), isNotNull);
    });

    test('a make-up day at the weekend is worked, with the weekday hours', () {
      final calendar = WorkCalendar.standard().copyWith(
        exceptions: [
          const CalendarException(
            date: '2026-10-10',
            working: true,
            note: 'Make-up',
          ),
        ],
      );
      final plan = calendar.planFor(saturday)!;
      expect(plan.exception?.note, 'Make-up');
      // Saturday's own standing hours, since the exception gives none.
      expect(plan.hours.end, '12:00');
      expect(calendar.planFor(sunday), isNull);
    });

    test('a make-up day can carry its own hours', () {
      final calendar = WorkCalendar.standard().copyWith(
        exceptions: [
          const CalendarException(
            date: '2026-10-10',
            working: true,
            hours: WorkHours(start: '09:00', end: '16:00'),
          ),
        ],
      );
      expect(calendar.planFor(saturday)!.hours.end, '16:00');
    });
  });

  group('a weekday turned off keeps its hours', () {
    test('and uses them again when switched back on', () {
      var calendar = WorkCalendar.standard();
      final friday = calendar.ruleFor(5);
      calendar = calendar.copyWith(
        weekdays: [
          for (final rule in calendar.weekdays)
            rule.weekday == 5 ? rule.copyWith(working: false) : rule,
        ],
      );
      expect(calendar.planFor(DateTime(2026, 10, 9)), isNull);
      calendar = calendar.copyWith(
        weekdays: [
          for (final rule in calendar.weekdays)
            rule.weekday == 5 ? rule.copyWith(working: true) : rule,
        ],
      );
      expect(calendar.planFor(DateTime(2026, 10, 9))!.hours, friday.hours);
    });
  });

  group('problems', () {
    WorkCalendar withMonday(WorkHours hours) {
      final base = WorkCalendar.standard();
      return base.copyWith(
        weekdays: [
          for (final rule in base.weekdays)
            rule.weekday == 1 ? rule.copyWith(hours: hours) : rule,
        ],
      );
    }

    test('a day that ends before it starts', () {
      final bad = withMonday(const WorkHours(start: '18:00', end: '08:30'));
      expect(bad.problems(), isNotEmpty);
    });

    test('a time that is not a time', () {
      final bad = withMonday(const WorkHours(start: '8:30', end: '18:00'));
      expect(bad.problems(), isNotEmpty);
    });

    test('lunch with only one end, or outside the day', () {
      expect(
        withMonday(
          const WorkHours(start: '08:30', end: '18:00', lunchStart: '12:00'),
        ).problems(),
        isNotEmpty,
      );
      expect(
        withMonday(
          const WorkHours(
            start: '08:30',
            end: '18:00',
            lunchStart: '07:00',
            lunchEnd: '08:00',
          ),
        ).problems(),
        isNotEmpty,
      );
    });

    test('a half day without lunch is fine', () {
      expect(
        withMonday(const WorkHours(start: '08:30', end: '12:00')).problems(),
        isEmpty,
      );
    });

    test('a malformed or repeated exception date', () {
      final calendar = WorkCalendar.standard().copyWith(
        exceptions: [
          const CalendarException(date: '2026-13-40', working: false),
          const CalendarException(date: '2026-10-05', working: false),
          const CalendarException(date: '2026-10-05', working: true),
        ],
      );
      expect(calendar.problems().length, 2);
    });
  });

  test('round-trips through JSON', () {
    final calendar = WorkCalendar.standard().copyWith(
      exceptions: [
        const CalendarException(
          date: '2026-10-10',
          working: true,
          note: 'Make-up',
          hours: WorkHours(start: '09:00', end: '16:00'),
        ),
      ],
    );
    expect(WorkCalendar.fromJson(calendar.toJson()), calendar);
  });

  group('the working day as dates and hours', () {
    final calendar = WorkCalendar.standard();

    test('the standard day starts 08:30, ends 18:00 and estimates 8 hours', () {
      expect(calendar.startOfWorkday(monday), DateTime(2026, 10, 5, 8, 30));
      expect(calendar.endOfWorkday(monday), DateTime(2026, 10, 5, 18, 0));
      expect(calendar.estimateHours(monday), 8.0);
      expect(calendar.hoursOn(monday).workMinutes, 570 - 85);
    });

    test('a changed end moves the end and the estimate', () {
      final earlier = calendar.copyWith(
        weekdays: [
          for (final rule in calendar.weekdays)
            rule.copyWith(hours: rule.hours.copyWith(end: '17:30')),
        ],
      );
      expect(earlier.endOfWorkday(monday), DateTime(2026, 10, 5, 17, 30));
      expect(earlier.estimateHours(monday), 7.5);
    });

    test('a morning-only make-up Saturday estimates its own hours', () {
      final makeUp = calendar.copyWith(
        exceptions: [
          const CalendarException(date: '2026-10-10', working: true),
        ],
      );
      expect(makeUp.endOfWorkday(saturday), DateTime(2026, 10, 10, 12, 0));
      expect(makeUp.estimateHours(saturday), 3.5);
    });

    test('a day off still has the weekday’s own hours to fall back on', () {
      expect(calendar.planFor(sunday), isNull);
      expect(calendar.endOfWorkday(sunday), DateTime(2026, 10, 11, 12, 0));
    });

    test('an estimate is never nothing', () {
      final tiny = calendar.copyWith(
        weekdays: [
          for (final rule in calendar.weekdays)
            rule.copyWith(
              hours: const WorkHours(start: '09:00', end: '09:05'),
            ),
        ],
      );
      expect(tiny.estimateHours(monday), 0.5);
    });
  });

  test('clock helpers', () {
    expect(parseClock('08:30'), 510);
    expect(parseClock('24:00'), isNull);
    expect(parseClock('8:30'), isNull);
    expect(formatClock(510), '08:30');
    expect(dateKey(DateTime(2026, 1, 2)), '2026-01-02');
  });
}
