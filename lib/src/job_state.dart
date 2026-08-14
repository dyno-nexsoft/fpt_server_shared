import 'package:json_annotation/json_annotation.dart';

/// A CI job's lifecycle state, as it appears on the wire (`Job.state`,
/// `JobFinishedEvent.state`, etc.) — shared so the backend and the dashboard
/// can never independently drift on what values exist.
enum JobState {
  queued,
  running,
  succeeded,
  failed,
  cancelled,
  interrupted,

  /// Not a real state the server ever produces — [fromWire]'s fallback for a
  /// value neither side recognises yet, so a submodule-pin lagging behind a
  /// newly added state degrades to "something changed" instead of a crash.
  unknown;

  /// Everything except the two states a job actively moves through — not an
  /// explicit list of terminal values, so a state neither side recognises
  /// yet ([unknown]) fails safe as "treat this as finished" rather than
  /// "still active and worth waiting on".
  bool get isTerminal => this != queued && this != running;

  /// The exact string this state serializes to on the wire — always the enum
  /// member's own name, kept as an explicit method (rather than relying on
  /// callers to reach for `.name` themselves) so every call site reads the
  /// same way whether it's writing JSON or comparing against one.
  String toWire() => name;

  /// Parses a wire value, never throwing — an unrecognized string (an older
  /// client talking to a newer server that added a state, or vice versa)
  /// becomes [unknown] instead of a crash.
  static JobState fromWire(String value) => JobState.values.firstWhere(
    (state) => state.name == value,
    orElse: () => JobState.unknown,
  );
}

/// json_serializable hook — the default enum handling has no fallback for an
/// unrecognized value and would throw instead of degrading to [JobState.unknown].
class JobStateConverter implements JsonConverter<JobState, String> {
  const JobStateConverter();

  @override
  JobState fromJson(String json) => JobState.fromWire(json);

  @override
  String toJson(JobState object) => object.toWire();
}
