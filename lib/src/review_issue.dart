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

/// What kind of problem a [ReviewIssue] is — lets the dashboard filter by it,
/// and shows at a glance whether a review is finding bugs or only style.
///
/// Snake_case on the wire because the model is asked for exactly these values.
enum ReviewCategory {
  @JsonValue('bug')
  bug('Bug'),
  @JsonValue('async')
  async('Async & lifecycle'),
  @JsonValue('null_safety')
  nullSafety('Null safety & data'),
  @JsonValue('security')
  security('Security'),
  @JsonValue('performance')
  performance('Performance'),
  @JsonValue('ui')
  ui('UI'),
  @JsonValue('architecture')
  architecture('Architecture'),
  @JsonValue('style')
  style('Style');

  const ReviewCategory(this.label);

  final String label;

  /// Never throws: the value comes from an AI response, and an unknown one
  /// is better dropped than allowed to sink the whole review.
  static ReviewCategory? fromWire(String? value) {
    for (final category in values) {
      if (category.name == value || _wire(category) == value) return category;
    }
    return null;
  }

  static String _wire(ReviewCategory c) =>
      c == nullSafety ? 'null_safety' : c.name;

  String toWire() => _wire(this);
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

    /// The cited line(s) as the file read when this was reported — a few
    /// trimmed lines at most. Line numbers drift as an MR gains commits; this
    /// is what lets a later review find the same code again. Null for a pipeline
    /// notice, and for findings recorded before this existed.
    String? anchor,

    /// The GitLab discussion thread this finding was posted as. Kept so the
    /// next review of the MR can resolve the thread once the finding is fixed.
    /// Null for a pipeline notice, and when the inline post was rejected.
    String? discussionId,

    /// What kind of problem this is. Null for a pipeline notice, and for
    /// findings recorded before this existed.
    @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
    ReviewCategory? category,

    /// The concrete trigger — the input or state that makes this go wrong.
    /// Separate from [description] so a reader can check whether the problem
    /// is real without reading the whole explanation. Null when not given.
    String? scenario,
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
