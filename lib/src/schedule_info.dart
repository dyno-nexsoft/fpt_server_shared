import 'package:freezed_annotation/freezed_annotation.dart';

import 'work_calendar.dart';

part 'schedule_info.freezed.dart';
part 'schedule_info.g.dart';

/// One scheduled job as the dashboard shows it: what it is, when it runs in
/// words, and when it runs next.
@freezed
abstract class ScheduledJobInfo with _$ScheduledJobInfo {
  const factory ScheduledJobInfo({
    required String name,

    /// When it runs, e.g. "Working days, at the start of the day + 30 min" or
    /// "Every day at 23:00".
    required String rule,

    /// Whether the working calendar decides which days it runs on. False for a
    /// job that runs every day regardless, such as the nightly cleanup.
    required bool followsCalendar,

    /// The next time it will run, in the server's local time; null when the
    /// calendar leaves it no day to run on in the coming weeks.
    DateTime? nextRun,
  }) = _ScheduledJobInfo;

  factory ScheduledJobInfo.fromJson(Map<String, dynamic> json) =>
      _$ScheduledJobInfoFromJson(json);
}

/// `schedule.get` and `schedule.set`: the working calendar and, derived from
/// it, when every job runs next.
@freezed
abstract class ScheduleInfo with _$ScheduleInfo {
  const factory ScheduleInfo({
    required WorkCalendar calendar,
    @Default(<ScheduledJobInfo>[]) List<ScheduledJobInfo> jobs,
  }) = _ScheduleInfo;

  factory ScheduleInfo.fromJson(Map<String, dynamic> json) =>
      _$ScheduleInfoFromJson(json);
}

/// `schedule.set`.
@freezed
abstract class ScheduleSetParams with _$ScheduleSetParams {
  const factory ScheduleSetParams({
    /// The whole calendar, replacing what is stored — the dashboard edits it
    /// as one document, so there is no partial update to get half applied.
    required WorkCalendar calendar,
  }) = _ScheduleSetParams;

  factory ScheduleSetParams.fromJson(Map<String, dynamic> json) =>
      _$ScheduleSetParamsFromJson(json);
}
