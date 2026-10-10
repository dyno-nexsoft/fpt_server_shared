/// One `log` frame of a job's raw stream (`/jobs/{id}/events?raw=1`): a piece
/// of `build.log` and where in the file it ends.
///
/// Not a `JobEvent`: raw frames are tailed from the file, not part of the
/// replayable lifecycle record, so they carry no `seq` or `at`.
class JobLogChunk {
  const JobLogChunk({required this.chunk, required this.offset});

  factory JobLogChunk.fromJson(Map<String, dynamic> json) => JobLogChunk(
    chunk: json['chunk'] as String? ?? '',
    offset: (json['offset'] as num?)?.toInt() ?? 0,
  );

  final String chunk;

  /// The byte offset in `build.log` just past [chunk] — where a
  /// `GET /jobs/{id}/log?offset=` picks up from, so a client falling back
  /// from the stream to polling neither repeats nor skips output.
  final int offset;

  Map<String, Object?> toJson() => {'chunk': chunk, 'offset': offset};
}
