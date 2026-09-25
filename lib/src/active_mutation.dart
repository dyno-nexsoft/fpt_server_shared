import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_mutation.freezed.dart';
part 'active_mutation.g.dart';

/// One `ActionKind.mutation` currently running that isn't job-backed (a
/// `gitlab.review`/`gitlab.translateArb` invocation, not `gitlab.analyze` —
/// that runs as a real `Job` and already gets this same visibility through
/// [Job] itself).
///
/// Broadcast alongside [SystemStatus] so every viewer of the dashboard sees
/// that (and roughly what) is in flight, not just whoever's own browser tab
/// happened to trigger it — the gap a per-call `ProgressFeed` (keyed by an
/// id only the initiating tab ever generates) can't close on its own.
@freezed
abstract class ActiveMutation with _$ActiveMutation {
  const factory ActiveMutation({
    /// The invoking `ActionRunner`'s own correlation id — stable for the
    /// life of this one call, not reused across retries the way
    /// `artifactKey`/`JobId` are for a job.
    required String id,
    required String actionName,

    /// One-line description of *this* call specifically (e.g. "Reviewing
    /// `some-mr-title`"), not just the action's own static description —
    /// see `Action.describeInvocation`.
    required String label,

    /// The latest progress line this invocation reported, or [label] itself
    /// before the first one arrives.
    required String status,
    required DateTime startedAt,
  }) = _ActiveMutation;

  factory ActiveMutation.fromJson(Map<String, dynamic> json) =>
      _$ActiveMutationFromJson(json);
}
