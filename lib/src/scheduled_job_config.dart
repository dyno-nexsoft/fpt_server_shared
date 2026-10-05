import 'package:freezed_annotation/freezed_annotation.dart';

import 'job_timing.dart';

part 'scheduled_job_config.freezed.dart';
part 'scheduled_job_config.g.dart';

/// What a scheduled job does. The two system kinds exist once each and cannot
/// be removed (only disabled or re-timed); announcements are the ones an admin
/// adds and deletes.
enum JobKind {
  /// Speaks an AI-worded message through the build machine's speakers.
  @JsonValue('announcement')
  announcement,

  /// Posts the daily-report prompt, with its Start button, to the report
  /// channel.
  @JsonValue('daily_report')
  dailyReport,

  /// Cleans the build workspace, then restarts the bot.
  @JsonValue('cleanup')
  cleanup,
}

/// One scheduled job as an admin configures it.
@freezed
abstract class ScheduledJobConfig with _$ScheduledJobConfig {
  const ScheduledJobConfig._();

  const factory ScheduledJobConfig({
    /// The job's identity — what `cron.run` names it and the audit log shows.
    /// Letters, digits and underscores; fixed once created.
    required String name,
    @JsonKey(unknownEnumValue: JobKind.announcement) required JobKind kind,

    /// A disabled job stays configured but never runs on its own.
    @Default(true) bool enabled,
    required JobTiming timing,

    /// For an announcement: what the AI is asked to say. Unused otherwise.
    @Default('') String prompt,

    /// For an announcement: spoken as it is when the AI cannot answer, so the
    /// reminder still happens. Unused otherwise.
    @Default('') String fallback,
  }) = _ScheduledJobConfig;

  factory ScheduledJobConfig.fromJson(Map<String, dynamic> json) =>
      _$ScheduledJobConfigFromJson(json);

  /// Whether this is one of the built-in jobs rather than an announcement.
  bool get isSystem => kind != JobKind.announcement;

  static final _namePattern = RegExp(r'^[A-Za-z][A-Za-z0-9_]{0,63}$');

  /// Everything wrong with this job on its own.
  List<String> problems() {
    final found = <String>[];
    if (!_namePattern.hasMatch(name)) {
      found.add(
        '"$name" is not a valid job name: start with a letter, then letters, '
        'digits or underscores (up to 64).',
      );
    }
    for (final problem in timing.problems()) {
      found.add('$name: $problem');
    }
    if (kind == JobKind.announcement &&
        (prompt.trim().isEmpty || fallback.trim().isEmpty)) {
      found.add('$name: an announcement needs both a prompt and a fallback.');
    }
    return found;
  }

  /// Everything wrong with [jobs] as a set: each job on its own, names that
  /// repeat, and a system job that was removed.
  static List<String> listProblems(List<ScheduledJobConfig> jobs) {
    final found = <String>[];
    final names = <String>{};
    for (final job in jobs) {
      if (!names.add(job.name)) found.add('${job.name} is listed twice.');
      found.addAll(job.problems());
    }
    for (final kind in [JobKind.dailyReport, JobKind.cleanup]) {
      final count = jobs.where((job) => job.kind == kind).length;
      if (count != 1) {
        found.add(
          'There must be exactly one ${kind == JobKind.cleanup ? 'cleanup' : 'daily report'} '
          'job; found $count.',
        );
      }
    }
    return found;
  }
}
