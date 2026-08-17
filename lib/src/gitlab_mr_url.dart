import 'package:freezed_annotation/freezed_annotation.dart';

part 'gitlab_mr_url.freezed.dart';
part 'gitlab_mr_url.g.dart';

/// Result of parsing a GitLab MR URL.
///
/// Deliberately free of any Discord dependency: this value object is the
/// shared currency between the slash-command converter, the REST layer,
/// the cron jobs, and the reporters in `application/`.
@freezed
class GitLabMrUrl with _$GitLabMrUrl {
  /// Private constructor: required by freezed before custom getters may be
  /// added to the class.
  const GitLabMrUrl._();

  const factory GitLabMrUrl({
    /// The `namespace/project` path (e.g. `root/tbchat_socialfi`).
    required String projectPath,

    /// Internal ID of the merge request (the `!123` number).
    required int mrIid,
  }) = _GitLabMrUrl;

  factory GitLabMrUrl.fromJson(Map<String, dynamic> json) =>
      _$GitLabMrUrlFromJson(json);

  static final _urlRegex = RegExp(
    r'^https?://[^/]+/(.+?)/-/merge_requests/(\d+)(?:/.*)?$',
  );

  /// The compact `projectPath!mrIid` form produced by [toString].
  static final _keyRegex = RegExp(r'^([^!\s]+)!(\d+)$');

  /// Parses a merge-request reference.
  ///
  /// Accepts a full GitLab URL:
  /// - `https://xddlabs.com/root/tbchat/-/merge_requests/123`
  /// - `https://xddlabs.com/root/tbchat/-/merge_requests/123/diffs`
  /// - `https://xddlabs.com/root/tbchat/-/merge_requests/123/commits`
  ///
  /// …and the compact `root/tbchat!123` form. The compact form matters because
  /// it is what [toString] and the persisted action parameters produce: without
  /// it, retrying a stored `gitlab.analyze` job could not re-parse its own
  /// parameters.
  ///
  /// Returns `null` if [raw] matches neither shape.
  static GitLabMrUrl? tryParse(String raw) {
    final trimmed = raw.trim();
    final match =
        _urlRegex.firstMatch(trimmed) ?? _keyRegex.firstMatch(trimmed);
    if (match == null) return null;

    final mrIid = int.tryParse(match.group(2)!);
    if (mrIid == null) return null;

    return GitLabMrUrl(projectPath: match.group(1)!, mrIid: mrIid);
  }

  /// Canonical `"projectPath!mrIid"` identity for this MR.
  String get storeKey => '$projectPath!$mrIid';

  @override
  String toString() => storeKey;
}
