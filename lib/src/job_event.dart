import 'package:freezed_annotation/freezed_annotation.dart';

import 'job_state.dart';

part 'job_event.freezed.dart';
part 'job_event.g.dart';

/// One entry in a job's live event stream (`GET /jobs/{id}/events`, SSE).
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
abstract class JobEvent with _$JobEvent {
  const factory JobEvent.queued({
    required int seq,
    required DateTime at,
    required int position,
  }) = JobQueuedEvent;

  const factory JobEvent.started({
    required int seq,
    required DateTime at,
    required bool immediate,
  }) = JobStartedEvent;

  const factory JobEvent.promoted({
    required int seq,
    required DateTime at,
  }) = JobPromotedEvent;

  const factory JobEvent.status({
    required int seq,
    required DateTime at,
    required String line,
  }) = JobStatusEvent;

  const factory JobEvent.log({
    required int seq,
    required DateTime at,
    required String chunk,
  }) = JobLogEvent;

  const factory JobEvent.error({
    required int seq,
    required DateTime at,
    required String message,
  }) = JobErrorEvent;

  const factory JobEvent.finished({
    required int seq,
    required DateTime at,
    @JobStateConverter() required JobState state,
    int? exitCode,
  }) = JobFinishedEvent;

  factory JobEvent.fromJson(Map<String, dynamic> json) =>
      _$JobEventFromJson(json);
}
