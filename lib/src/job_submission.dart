import 'package:freezed_annotation/freezed_annotation.dart';

import 'job.dart';

part 'job_submission.freezed.dart';

/// Result of every `ActionKind.job` action — returned the moment the job is
/// queued, not when it finishes.
///
/// [toJson] flattens [job]'s own fields into the top level rather than
/// nesting them under a `job` key, so a REST client sees exactly [Job]'s wire
/// shape plus these two extra fields — matching the previous hand-written
/// `JobSubmitted.toJson()` in `fpt_server` exactly, which this replaces.
@freezed
class JobSubmission with _$JobSubmission {
  const JobSubmission._();

  const factory JobSubmission({
    required Job job,

    /// Live build log, served by the static file handler.
    required String logUrl,

    /// Non-fatal problems the caller should see, e.g. the Discord message
    /// could not be posted. The job still runs — a Discord outage must not
    /// become a CI outage.
    @Default([]) List<String> warnings,
  }) = _JobSubmission;

  Map<String, Object?> toJson() => {
    ...job.toJson(),
    'log_url': logUrl,
    if (warnings.isNotEmpty) 'warnings': warnings,
  };
}
