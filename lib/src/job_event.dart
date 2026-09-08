import 'package:freezed_annotation/freezed_annotation.dart';

import 'job_state.dart';

part 'job_event.freezed.dart';
part 'job_event.g.dart';

/// Lifecycle events emitted by a job.
///
/// Every event carries a per-job monotonic [seq] starting at 1. That number
/// is what makes replay work: an SSE client reconnecting with
/// `Last-Event-ID: 12` asks for `seq > 12` and provably receives every later
/// event exactly once.
///
/// `unionKey: 'type'` puts the discriminator in the JSON under the same name
/// SSE uses for its `event:` field, so the wire format has one vocabulary.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class JobEvent with _$JobEvent {
  const JobEvent._();

  @FreezedUnionValue('queued')
  const factory JobEvent.queued({
    required int seq,
    required DateTime at,

    /// 1-based position in the queue at the time of queuing.
    required int position,
  }) = JobQueuedEvent;

  @FreezedUnionValue('started')
  const factory JobEvent.started({
    required int seq,
    required DateTime at,

    /// True when the job runs in the parallel lane rather than the queue.
    required bool immediate,
  }) = JobStartedEvent;

  @FreezedUnionValue('promoted')
  const factory JobEvent.promoted({required int seq, required DateTime at}) =
      JobPromotedEvent;

  /// A coarse human-readable status line — the same two-or-three lines that
  /// go into the Discord message body. Not raw build output.
  @FreezedUnionValue('status')
  const factory JobEvent.status({
    required int seq,
    required DateTime at,
    required String line,
  }) = JobStatusEvent;

  /// Raw build output, produced by tailing `build/<artifactKey>/build.log`.
  ///
  /// Deliberately kept out of the Discord path: the message would blow
  /// through Discord's edit rate limit within seconds.
  @FreezedUnionValue('log')
  const factory JobEvent.log({
    required int seq,
    required DateTime at,
    required String chunk,
  }) = JobLogEvent;

  @FreezedUnionValue('error')
  const factory JobEvent.error({
    required int seq,
    required DateTime at,
    required String message,
  }) = JobErrorEvent;

  @FreezedUnionValue('finished')
  const factory JobEvent.finished({
    required int seq,
    required DateTime at,
    @JobStateConverter() required JobState state,
    int? exitCode,
  }) = JobFinishedEvent;

  factory JobEvent.fromJson(Map<String, dynamic> json) =>
      _$JobEventFromJson(json);

  /// Discriminator used as the SSE `event:` name. Mirrors the JSON `type`.
  String get type => switch (this) {
    JobQueuedEvent() => 'queued',
    JobStartedEvent() => 'started',
    JobPromotedEvent() => 'promoted',
    JobStatusEvent() => 'status',
    JobLogEvent() => 'log',
    JobErrorEvent() => 'error',
    JobFinishedEvent() => 'finished',
  };
}
