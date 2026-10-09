/// What to call a job and what it was about, for any place that lists them side by side — the inbox, the toast about a
/// teammate's job — so `ci.reposts` ×10 reads as "Repost · @handle · dev" instead of ten identical lines. Plain
/// functions on the action name and its params, so the server and the dashboard word it the same way.
library;

/// A short name for an action: `ci.build` → `Build`. An action it does not know keeps its own name, and none at all is
/// just `Job`.
String actionLabel(String? actionName) => switch (actionName) {
  'ci.build' => 'Build',
  'ci.gen' => 'Gen',
  'ci.reposts' => 'Repost',
  'ci.replace' => 'SDK replace',
  'ci.clean' => 'Clean',
  null || '' => 'Job',
  final other => other,
};

/// What a job was about, in a few words: the account for a repost (`@handle · dev`), the platform and branch for a
/// build. Null when its params say nothing worth showing.
String? jobSubject(String? actionName, Map<String, Object?> params) {
  String? text(String key) {
    final value = params[key];
    return value is String && value.isNotEmpty ? value : null;
  }

  final parts = switch (actionName) {
    'ci.reposts' => [_postOwner(text('url')), text('environment')],
    'ci.build' => [text('platform'), text('environment'), text('tbchat')],
    'ci.replace' || 'ci.gen' => [text('tbchat'), text('environment')],
    _ => const <String?>[],
  };
  final shown = [
    for (final part in parts)
      // ignore: use_null_aware_elements, the root's generators run on analyzer 5.13, which cannot parse `?part`.
      if (part != null) part,
  ];
  return shown.isEmpty ? null : shown.join(' · ');
}

/// The account a social link names: `@handle` for TikTok and YouTube, the first path segment for the others, a video id
/// for a bare `watch?v=` link.
String? _postOwner(String? link) {
  final uri = link == null ? null : Uri.tryParse(link);
  if (uri == null) return null;
  final segments = [
    for (final segment in uri.pathSegments)
      if (segment.isNotEmpty) segment,
  ];
  final handle = segments
      .where((segment) => segment.startsWith('@'))
      .firstOrNull;
  if (handle != null) return handle;
  final video = uri.queryParameters['v'];
  if (video != null) return 'video $video';
  return segments.isEmpty
      ? uri.host
      : segments.length == 1
      ? segments.first
      : '${segments.first}/${segments.last}';
}
