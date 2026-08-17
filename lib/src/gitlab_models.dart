// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'gitlab_mr_url.dart';

part 'gitlab_models.freezed.dart';
part 'gitlab_models.g.dart';

/// GitLab nests the author under `author.name`; json_serializable needs a
/// custom reader to reach into it.
Object? _readAuthorName(Map<dynamic, dynamic> json, String key) =>
    (json['author'] as Map<String, dynamic>?)?['name'];

/// Represents a GitLab Merge Request with the fields relevant to review.
///
/// Defaults mirror the previous hand-written `fromJson` exactly: GitLab omits
/// `description`, `changes_count`, and `sha` on some endpoints, and treating
/// those as missing rather than defaulting would break the cron review check.
/// snake_case field names come from `field_rename: snake` in `build.yaml`.
///
/// Fields whose GitLab name is not simply the snake_case of the Dart name still
/// need an explicit `@JsonKey`: `authorName` is nested under `author.name`, and
/// the diff booleans are `deleted_file` / `renamed_file` / `new_file`, not
/// `is_deleted` / `is_renamed` / `is_new_file`.
@freezed
class GitLabMergeRequest with _$GitLabMergeRequest {
  const GitLabMergeRequest._();

  const factory GitLabMergeRequest({
    /// Internal ID of the MR within its project (the `!123` number on GitLab).
    required int iid,

    /// Title of the Merge Request.
    required String title,

    /// Source branch name (feature branch).
    required String sourceBranch,

    /// Target branch name (usually `develop` or `main`).
    required String targetBranch,

    /// Display name of the author on GitLab.
    @JsonKey(name: 'author', readValue: _readAuthorName)
    required String authorName,

    /// Full URL to open the MR in a browser.
    required String webUrl,

    /// Current state: `opened`, `closed`, `merged`, or `locked`.
    required String state,

    /// Description written by the author, may be empty.
    @Default('') String description,

    /// Labels applied to this merge request.
    @Default(<String>[]) List<String> labels,

    /// Number of changed files as reported by GitLab (e.g. "15").
    @Default('0') String changesCount,

    /// Head commit SHA of the source branch at the time of the API call.
    ///
    /// Used by the cron job to detect new commits and trigger re-reviews.
    @Default('') String sha,
  }) = _GitLabMergeRequest;

  factory GitLabMergeRequest.fromJson(Map<String, dynamic> json) =>
      _$GitLabMergeRequestFromJson(json);

  /// Extracts the project path (e.g. 'root/tbchat') from [webUrl].
  String get projectPath =>
      GitLabMrUrl.tryParse(webUrl)?.projectPath ??
      (throw StateError('Could not parse project path from webUrl: $webUrl'));
}

/// Represents a single file diff within a Merge Request.
@freezed
class GitLabMrDiff with _$GitLabMrDiff {
  const factory GitLabMrDiff({
    /// File path after the change.
    required String newPath,

    /// File path before the change (differs from [newPath] on rename).
    required String oldPath,

    /// Unified diff content for this file.
    @Default('') String diff,

    /// `true` if the file was deleted in this MR.
    @JsonKey(name: 'deleted_file') @Default(false) bool isDeleted,

    /// `true` if the file was renamed (move/rename).
    @JsonKey(name: 'renamed_file') @Default(false) bool isRenamed,

    /// Whether this diff entry represents a newly created file.
    @JsonKey(name: 'new_file') @Default(false) bool isNewFile,
  }) = _GitLabMrDiff;

  factory GitLabMrDiff.fromJson(Map<String, dynamic> json) =>
      _$GitLabMrDiffFromJson(json);
}
