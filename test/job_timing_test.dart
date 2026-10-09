import 'package:nexsoft_server_shared/nexsoft_server_shared.dart';
import 'package:test/test.dart';

// 2026-10-05 is a Monday, 2026-10-09 a Friday, 2026-10-10 a Saturday.
final _monday = DateTime(2026, 10, 5);
final _friday = DateTime(2026, 10, 9);
final _saturday = DateTime(2026, 10, 10);

DateTime _at(DateTime day, int hour, int minute) =>
    DateTime(day.year, day.month, day.day, hour, minute);

void main() {
  final calendar = WorkCalendar.standard();

  group('JobTiming', () {
    test('a workday job runs at its anchor, plus its offset', () {
      final start = JobTiming.workday(TimeAnchor.workStart);
      final reminder = JobTiming.workday(
        TimeAnchor.workStart,
        offsetMinutes: 30,
      );
      expect(start.minuteOn(calendar, _monday), 8 * 60 + 30);
      expect(reminder.minuteOn(calendar, _monday), 9 * 60);
      expect(
        JobTiming.workday(TimeAnchor.workEnd).minuteOn(calendar, _monday),
        18 * 60,
      );
      expect(
        JobTiming.workday(TimeAnchor.lunchEnd).minuteOn(calendar, _monday),
        13 * 60 + 25,
      );
    });

    test('a workday job does not run on a day off, a daily job does', () {
      expect(
        JobTiming.workday(TimeAnchor.workStart).minuteOn(calendar, _saturday),
        isNull,
      );
      expect(JobTiming.daily(23, 0).minuteOn(calendar, _saturday), 23 * 60);
    });

    test('a half day has no lunch, so lunch jobs skip it', () {
      final halfDay = calendar.copyWith(
        exceptions: [
          const CalendarException(date: '2026-10-10', working: true),
        ],
      );
      expect(
        JobTiming.workday(TimeAnchor.lunchStart).minuteOn(halfDay, _saturday),
        isNull,
      );
      expect(
        JobTiming.workday(TimeAnchor.workStart).minuteOn(halfDay, _saturday),
        8 * 60 + 30,
      );
    });

    test('an offset that leaves the day means no run', () {
      expect(
        JobTiming.workday(
          TimeAnchor.workEnd,
          offsetMinutes: 600,
        ).minuteOn(calendar, _monday),
        isNull,
      );
    });

    test('isDueAt is exact to the minute', () {
      final start = JobTiming.workday(TimeAnchor.workStart);
      expect(start.isDueAt(calendar, _at(_monday, 8, 30)), isTrue);
      expect(start.isDueAt(calendar, _at(_monday, 8, 29)), isFalse);
      expect(start.isDueAt(calendar, _at(_monday, 8, 31)), isFalse);
    });

    test('nextRun skips a weekend and a holiday', () {
      final start = JobTiming.workday(TimeAnchor.workStart);
      expect(
        start.nextRun(calendar, _at(_friday, 9, 0)),
        _at(DateTime(2026, 10, 12), 8, 30),
      );
      final withHoliday = calendar.copyWith(
        exceptions: [
          const CalendarException(date: '2026-10-12', working: false),
        ],
      );
      expect(
        start.nextRun(withHoliday, _at(_friday, 9, 0)),
        _at(DateTime(2026, 10, 13), 8, 30),
      );
    });

    test('nextRun finds a make-up Saturday', () {
      final makeUp = calendar.copyWith(
        exceptions: [
          const CalendarException(date: '2026-10-10', working: true),
        ],
      );
      expect(
        JobTiming.workday(
          TimeAnchor.workStart,
        ).nextRun(makeUp, _at(_friday, 9, 0)),
        _at(_saturday, 8, 30),
      );
    });

    test('nextRun is null when nothing is ever a working day', () {
      final allOff = calendar.copyWith(
        weekdays: [
          for (final rule in calendar.weekdays) rule.copyWith(working: false),
        ],
      );
      expect(
        JobTiming.workday(TimeAnchor.workStart).nextRun(allOff, _monday),
        isNull,
      );
    });

    test('describes itself in words', () {
      expect(
        JobTiming.workday(TimeAnchor.workStart, offsetMinutes: 30).describe(),
        'Working days, at the start of the day + 30 min',
      );
      expect(
        JobTiming.workday(TimeAnchor.lunchEnd, offsetMinutes: -5).describe(),
        'Working days, at the end of lunch − 5 min',
      );
      expect(JobTiming.daily(23, 0).describe(), 'Every day at 23:00');
    });

    test('round-trips through JSON', () {
      for (final timing in [
        JobTiming.workday(TimeAnchor.lunchStart, offsetMinutes: 15),
        JobTiming.daily(7, 5),
      ]) {
        expect(JobTiming.fromJson(timing.toJson()), timing);
      }
      expect(
        JobTiming.workday(TimeAnchor.workEnd).toJson()['anchor'],
        'work_end',
      );
    });

    test('problems', () {
      expect(JobTiming.workday(TimeAnchor.workStart).problems(), isEmpty);
      expect(JobTiming.daily(23, 0).problems(), isEmpty);
      expect(const JobTiming().problems(), isNotEmpty);
      expect(const JobTiming(time: '25:00').problems(), isNotEmpty);
      expect(
        const JobTiming(anchor: TimeAnchor.workStart, time: '08:00').problems(),
        isNotEmpty,
      );
      expect(
        JobTiming.workday(TimeAnchor.workStart, offsetMinutes: 900).problems(),
        isNotEmpty,
      );
    });
  });

  group('ScheduledJobConfig', () {
    ScheduledJobConfig job(
      String name,
      JobKind kind, {
      String prompt = '',
      String fallback = '',
    }) => ScheduledJobConfig(
      name: name,
      kind: kind,
      timing: JobTiming.workday(TimeAnchor.workStart),
      prompt: prompt,
      fallback: fallback,
    );

    final system = [
      job('Report', JobKind.dailyReport),
      job('Cleanup', JobKind.cleanup),
    ];

    test('the system jobs alone are a valid set', () {
      expect(ScheduledJobConfig.listProblems(system), isEmpty);
    });

    test('an announcement needs a prompt and a fallback', () {
      expect(
        ScheduledJobConfig.listProblems([
          ...system,
          job('Stretch', JobKind.announcement),
        ]),
        isNotEmpty,
      );
      expect(
        ScheduledJobConfig.listProblems([
          ...system,
          job('Stretch', JobKind.announcement, prompt: 'p', fallback: 'f'),
        ]),
        isEmpty,
      );
    });

    test('names must be unique and well formed', () {
      expect(
        ScheduledJobConfig.listProblems([
          ...system,
          job('Report', JobKind.announcement, prompt: 'p', fallback: 'f'),
        ]),
        isNotEmpty,
      );
      expect(job('not valid!', JobKind.cleanup).problems(), isNotEmpty);
      expect(job('1abc', JobKind.cleanup).problems(), isNotEmpty);
    });

    test('a system job cannot be missing or repeated', () {
      expect(
        ScheduledJobConfig.listProblems([job('Report', JobKind.dailyReport)]),
        isNotEmpty,
      );
      expect(
        ScheduledJobConfig.listProblems([
          ...system,
          job('Report2', JobKind.dailyReport),
        ]),
        isNotEmpty,
      );
    });

    test('a bad timing is reported against the job', () {
      final bad = job(
        'Stretch',
        JobKind.announcement,
      ).copyWith(prompt: 'p', fallback: 'f', timing: const JobTiming());
      expect(bad.problems().any((p) => p.startsWith('Stretch:')), isTrue);
    });

    test('is a system job unless it is an announcement', () {
      expect(job('R', JobKind.dailyReport).isSystem, isTrue);
      expect(job('A', JobKind.announcement).isSystem, isFalse);
    });

    test('round-trips through JSON', () {
      final config = job(
        'Stretch',
        JobKind.announcement,
        prompt: 'p',
        fallback: 'f',
      );
      expect(ScheduledJobConfig.fromJson(config.toJson()), config);
      expect(job('C', JobKind.cleanup).toJson()['kind'], 'cleanup');
    });
  });
}
