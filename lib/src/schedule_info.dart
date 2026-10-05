import 'package:freezed_annotation/freezed_annotation.dart';

import 'scheduled_job_config.dart';
import 'work_calendar.dart';

part 'schedule_info.freezed.dart';
part 'schedule_info.g.dart';

/// One scheduled job as the dashboard shows it: its configuration, what that
/// means in words, and when it runs next.
@freezed
abstract class ScheduledJobInfo with _$ScheduledJobInfo {
  const factory ScheduledJobInfo({
    required ScheduledJobConfig config,

    /// When it runs, e.g. "Working days, at the start of the day + 30 min" or
    /// "Every day at 23:00".
    required String rule,

    /// The next time it will run, in the server's local time; null when it is
    /// disabled, or the calendar leaves it no day to run on in the coming
    /// weeks.
    DateTime? nextRun,
  }) = _ScheduledJobInfo;

  factory ScheduledJobInfo.fromJson(Map<String, dynamic> json) =>
      _$ScheduledJobInfoFromJson(json);
}

/// `schedule.get` and `schedule.set`: the working calendar, the jobs that
/// follow it, and when each runs next.
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

    /// The whole job list, replacing what is stored. Null leaves the jobs as
    /// they are, which is what a client that only edits the calendar sends.
    List<ScheduledJobConfig>? jobs,
  }) = _ScheduleSetParams;

  factory ScheduleSetParams.fromJson(Map<String, dynamic> json) =>
      _$ScheduleSetParamsFromJson(json);
}
