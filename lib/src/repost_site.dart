import 'url_input.dart';

/// The sites `ci.reposts` takes a link from, in one place for the action that
/// validates the link and the tool that fetches it (`nexsoft_server_hook`).
///
/// Two hand-kept lists drifted apart before: a site the tool could fetch was
/// still refused by the action as "not a social link", or the other way round.
/// yt-dlp fetches every one of these; what is special to one site (TikTok's
/// photo posts and profile pages) is the tool's business, not this list's.
enum RepostSite {
  tiktok('tiktok', 'tt', {'tiktok.com'}, {}),
  youtube('youtube', 'yt', {'youtube.com', 'youtu.be'}, {'v', 'list'}),
  facebook(
    'facebook',
    'fb',
    {'facebook.com', 'fb.com', 'fb.watch'},
    {'v', 'story_fbid', 'id', 'fbid', 'set'},
  ),
  instagram('instagram', 'ig', {'instagram.com'}, {});

  const RepostSite(this.label, this.suffix, this.hosts, this.keepKeys);

  /// The name used in logs and account folders.
  final String label;

  /// Added to the SocialFi username of an account that is not TikTok's, since
  /// usernames are unique and the same name can exist on two sites (`name_yt`).
  final String suffix;

  /// The domains a link from this site is on; subdomains (`www.`, `m.`) count.
  final Set<String> hosts;

  /// The query keys that name the post — `watch?v=` on YouTube, `?v=` or
  /// `story_fbid` on Facebook. Everything else in a shared link is tracking.
  /// TikTok and Instagram address a post by its path, so they keep none.
  final Set<String> keepKeys;

  /// The site [url] points at, or null.
  static RepostSite? of(String url) {
    final host = Uri.tryParse(url)?.host.toLowerCase() ?? '';
    for (final site in values) {
      for (final domain in site.hosts) {
        if (host == domain || host.endsWith('.$domain')) return site;
      }
    }
    return null;
  }

  /// [given] cleaned the way a repost link is stored and run: with its scheme,
  /// without share tracking, and — on a known site — with only [keepKeys] left
  /// of its query, so the same post is always the same command. Null when
  /// [given] is not a link at all.
  static String? tidy(String given) {
    final plain = tidyUrl(given);
    final site = plain == null ? null : of(plain);
    return site == null
        ? plain
        : tidyUrl(given, dropQuery: true, keepKeys: site.keepKeys);
  }

  /// The account the link names, when the link says (a profile or a post under
  /// one), else empty: a bare video link (`youtu.be/…`, `facebook.com/reel/…`)
  /// does not, and the handle then comes from the post itself.
  String handleIn(String url) {
    final uri = Uri.tryParse(url);
    if (uri == null) return '';
    final parts = [
      for (final part in uri.pathSegments)
        if (part.isNotEmpty) part,
    ];
    if (parts.isEmpty) return '';
    switch (this) {
      case RepostSite.tiktok:
        return RegExp(r'^@(.+)$').firstMatch(parts.first)?.group(1) ?? '';
      case RepostSite.youtube:
        if (parts.first.startsWith('@')) return parts.first.substring(1);
        const named = {'channel', 'c', 'user'};
        return named.contains(parts.first) && parts.length > 1 ? parts[1] : '';
      case RepostSite.facebook:
        // fb.watch/<code> is a short link, not a page.
        if (uri.host.endsWith('fb.watch')) return '';
        if (parts.first == 'profile.php') {
          return uri.queryParameters['id'] ?? '';
        }
        const notAPage = {
          'watch',
          'reel',
          'reels',
          'share',
          'video',
          'videos',
          'photo',
          'photos',
          'groups',
          'story.php',
          'permalink.php',
        };
        return notAPage.contains(parts.first) ? '' : parts.first;
      case RepostSite.instagram:
        const notAUser = {
          'p',
          'reel',
          'reels',
          'tv',
          'stories',
          'explore',
          'share',
        };
        return notAUser.contains(parts.first) ? '' : parts.first;
    }
  }

  /// The link of one post of [handle] by its [id], for the sites whose listings
  /// give ids; null for the others. Fetching the posts one by one avoids asking
  /// the site for the whole profile again, which TikTok sometimes refuses the
  /// second time ("Unable to extract secondary user ID").
  String? postUrl(String handle, String id) => switch (this) {
    RepostSite.tiktok => 'https://www.tiktok.com/@$handle/video/$id',
    RepostSite.youtube => 'https://www.youtube.com/watch?v=$id',
    _ => null,
  };

  /// Whether [url] is a YouTube channel's front page, which is a playlist of
  /// tabs (Videos, Shorts, Live) rather than of videos.
  bool isChannelRoot(String url) {
    final uri = Uri.tryParse(url);
    return this == RepostSite.youtube &&
        uri != null &&
        RegExp(
          r'^/(@[^/]+|channel/[^/]+|c/[^/]+|user/[^/]+)/?$',
        ).hasMatch(uri.path);
  }

  /// One tab (`videos` or `shorts`) of the YouTube channel at [url].
  String channelTab(String url, String tab) {
    final uri = Uri.parse(url);
    final base = uri.path.replaceFirst(RegExp(r'/$'), '');
    return uri.replace(path: '$base/$tab').toString();
  }

  /// The link to list posts from: a YouTube channel is asked for its Videos
  /// tab, since the bare channel is a playlist of tabs.
  String listingUrl(String url) =>
      isChannelRoot(url) ? channelTab(url, 'videos') : url;
}
