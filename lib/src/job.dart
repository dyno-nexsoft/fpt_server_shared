import 'package:freezed_annotation/freezed_annotation.dart';

import 'discord_message_ref.dart';
import 'job_state.dart';

part 'job.freezed.dart';
part 'job.g.dart';

/// One CI job, as it appears on the wire — `GET /jobs`, `GET /jobs/{id}`,
/// and (with [logUrl]/[warnings]/[message] additionally set) the response of
/// any job-action invocation, retry, or cancel.
///
/// A pure data shape: the server's own domain `Job` carries live behaviour
/// (an event stream, mutable state) this type does not and should not
/// model — it is what that domain object's `toJson()` produces, and what a
/// client parses back.
@freezed
abstract class Job with _$Job {
  const factory Job({
    required String id,
    @JobStateConverter() required JobState state,
    required String command,
    String? actionName,
    @Default({}) Map<String, dynamic> actionParams,
    @Default({}) Map<String, dynamic> environments,
    String? createdBy,
    int? artifactKey,
    @Default(false) bool promoted,
    @Default(false) bool announce,
    required DateTime createdAt,
    DateTime? startedAt,
    DateTime? finishedAt,
    int? exitCode,
    String? lastLine,
    @Default(0) int lastSeq,
    DiscordMessageRef? discord,
    String? resumedFrom,
    String? cancelledBy,

    /// Set only on the response of an action invocation/retry — the build
    /// log's URL, served by the static file handler.
    String? logUrl,

    /// Set only on the response of an action invocation/retry — non-fatal
    /// problems the caller should see (e.g. the Discord message could not be
    /// posted). The job still runs; a Discord outage must not become a CI
    /// outage.
    @Default([]) List<String> warnings,

    /// Set only on the response of a cancel — e.g. `⛔️ Build cancelled!`.
    String? message,
  }) = _Job;

  const Job._();

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  bool get isTerminal => state.isTerminal;

  Duration? get runningDuration {
    final started = startedAt;
    if (started == null) return null;
    return (finishedAt ?? DateTime.now()).difference(started);
  }
}
