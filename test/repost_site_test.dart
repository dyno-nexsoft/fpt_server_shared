import 'package:nexsoft_server_shared/nexsoft_server_shared.dart';
import 'package:test/test.dart';

void main() {
  group('RepostSite.of', () {
    test('each site, with and without a subdomain', () {
      expect(RepostSite.of('https://www.tiktok.com/@a'), RepostSite.tiktok);
      expect(RepostSite.of('https://youtu.be/x'), RepostSite.youtube);
      expect(
        RepostSite.of('https://m.youtube.com/watch?v=x'),
        RepostSite.youtube,
      );
      expect(RepostSite.of('https://fb.watch/abc'), RepostSite.facebook);
      expect(
        RepostSite.of('https://web.facebook.com/page'),
        RepostSite.facebook,
      );
      expect(
        RepostSite.of('https://www.instagram.com/u'),
        RepostSite.instagram,
      );
    });

    test('a look-alike host is not the site', () {
      expect(RepostSite.of('https://nottiktok.com/@a'), isNull);
      expect(RepostSite.of('https://example.com'), isNull);
      expect(RepostSite.of('not a link'), isNull);
    });
  });

  group('RepostSite.tidy', () {
    test('keeps only the keys that name the post', () {
      expect(
        RepostSite.tidy('youtube.com/watch?v=abc&si=share&t=10'),
        'https://youtube.com/watch?v=abc',
      );
      expect(
        RepostSite.tidy(
          'https://www.tiktok.com/@a/video/1?is_from_webapp=1&sender_device=pc',
        ),
        'https://www.tiktok.com/@a/video/1',
      );
    });

    test('an unknown site only loses tracking keys', () {
      expect(
        RepostSite.tidy('https://example.com/f?token=1&utm_source=x'),
        'https://example.com/f?token=1',
      );
    });

    test('null for what is not a link', () {
      expect(RepostSite.tidy(''), isNull);
    });
  });

  group('handleIn', () {
    test('reads the account a link names', () {
      expect(
        RepostSite.tiktok.handleIn('https://www.tiktok.com/@jack/video/1'),
        'jack',
      );
      expect(
        RepostSite.youtube.handleIn('https://www.youtube.com/@chan/shorts'),
        'chan',
      );
      expect(
        RepostSite.youtube.handleIn('https://www.youtube.com/channel/UC1'),
        'UC1',
      );
      expect(
        RepostSite.facebook.handleIn('https://www.facebook.com/page/videos/1'),
        'page',
      );
      expect(
        RepostSite.facebook.handleIn(
          'https://www.facebook.com/profile.php?id=42',
        ),
        '42',
      );
      expect(
        RepostSite.instagram.handleIn('https://www.instagram.com/user/'),
        'user',
      );
    });

    test('a bare post link names no account', () {
      expect(RepostSite.youtube.handleIn('https://youtu.be/x'), '');
      expect(
        RepostSite.facebook.handleIn('https://www.facebook.com/reel/1'),
        '',
      );
      expect(RepostSite.facebook.handleIn('https://fb.watch/abc'), '');
      expect(
        RepostSite.instagram.handleIn('https://www.instagram.com/p/abc'),
        '',
      );
    });
  });

  test('a YouTube channel lists its Videos tab', () {
    const channel = 'https://www.youtube.com/@chan';
    expect(RepostSite.youtube.isChannelRoot(channel), isTrue);
    expect(RepostSite.youtube.listingUrl(channel), '$channel/videos');
    expect(
      RepostSite.youtube.channelTab('$channel/', 'shorts'),
      '$channel/shorts',
    );
    expect(RepostSite.youtube.isChannelRoot('$channel/videos'), isFalse);
  });

  test('post links only for the sites whose listings give ids', () {
    expect(
      RepostSite.tiktok.postUrl('a', '1'),
      'https://www.tiktok.com/@a/video/1',
    );
    expect(
      RepostSite.youtube.postUrl('a', 'x'),
      'https://www.youtube.com/watch?v=x',
    );
    expect(RepostSite.facebook.postUrl('a', '1'), isNull);
  });
}
