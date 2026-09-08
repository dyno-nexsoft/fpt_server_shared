import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_issue.freezed.dart';
part 'review_issue.g.dart';

/// How serious a [ReviewIssue] is, in the vocabulary the AI review prompt
/// constrains its own output to.
///
/// Uppercase on the wire because that is what the model is asked to produce
/// and what the GitLab comment renders verbatim — the enum member names are
/// lowercase only because Dart's are.
enum ReviewSeverity {
  @JsonValue('HIGH')
  high,

  @JsonValue('MEDIUM')
  medium,

  @JsonValue('LOW')
  low;

  /// Descending sort key, so ordering many batches' findings together is a
  /// plain numeric compare. Lives here rather than next to the reporter
  /// because "HIGH outranks MEDIUM" is a property of the vocabulary, not of
  /// whoever happens to be sorting.
  int get rank => switch (this) {
    ReviewSeverity.high => 2,
    ReviewSeverity.medium => 1,
    ReviewSeverity.low => 0,
  };

  String toWire() => name.toUpperCase();

  /// Never throws. The value originates from an AI response, so an
  /// unrecognised (or absent) one is a real possibility rather than a
  /// protocol violation — and under-reporting a finding's severity is a far
  /// better failure than dropping the whole review.
  static ReviewSeverity fromWire(String? value) =>
      switch (value?.toUpperCase()) {
        'HIGH' => ReviewSeverity.high,
        'MEDIUM' => ReviewSeverity.medium,
        _ => ReviewSeverity.low,
      };
}

/// One finding from `gitlab.review`, as it travels back to every caller.
///
/// Shared rather than defined on each side because this exact six-field
/// snake_case shape was being written out by hand in four places — the
/// server's `toJson`, the dashboard's parse of the REST response, and the
/// dashboard's save/load of its own `localStorage` copy. A camelCase slip in
/// any one of them does not fail to compile; it silently drops a field, which
/// is the failure mode hard constraint #4 exists for.
@freezed
abstract class ReviewIssue with _$ReviewIssue {
  const ReviewIssue._();

  const factory ReviewIssue({
    @JsonKey(unknownEnumValue: ReviewSeverity.low)
    required ReviewSeverity severity,
    required String file,

    /// `0` for a synthetic pipeline notice, which reports a failed batch
    /// rather than a finding and so has no real line to cite.
    required int lineStart,
    int? lineEnd,
    required String description,

    /// Direct link to the exact line(s) in GitLab's blob view — null for a
    /// pipeline notice, which has no file to link to.
    String? url,
  }) = _ReviewIssue;

  factory ReviewIssue.fromJson(Map<String, dynamic> json) =>
      _$ReviewIssueFromJson(json);

  /// `file:line`, or `file:start-end` when the finding spans several lines,
  /// or just the file for a pipeline notice.
  ///
  /// Here rather than in the widget that renders it so the dashboard and any
  /// other consumer cite a finding the same way.
  String get location {
    if (lineStart <= 0) return file;
    final end = lineEnd;
    return (end != null && end != lineStart)
        ? '$file:$lineStart-$end'
        : '$file:$lineStart';
  }
}
