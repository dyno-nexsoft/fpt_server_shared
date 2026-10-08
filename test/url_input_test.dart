import 'package:fpt_server_shared/fpt_server_shared.dart';
import 'package:test/test.dart';

void main() {
  group('tidyUrl', () {
    test('adds https when the scheme is missing', () {
      expect(tidyUrl('www.tiktok.com/@a'), 'https://www.tiktok.com/@a');
      expect(tidyUrl('//example.com/x'), 'https://example.com/x');
      expect(tidyUrl('  example.com  '), 'https://example.com');
    });

    test('keeps the scheme it was given', () {
      expect(tidyUrl('http://124.0.0.1:8888/a/b/'), 'http://124.0.0.1:8888/a/b/');
    });

    test('drops the fragment and, on request, the whole query', () {
      expect(
        tidyUrl('https://www.tiktok.com/@a/video/1?is_from_webapp=1&sender_device=pc#x', dropQuery: true),
        'https://www.tiktok.com/@a/video/1',
      );
    });

    test('without dropQuery only tracking keys go', () {
      expect(
        tidyUrl('https://x.test/f.zip?token=abc&utm_source=a&fbclid=z&_r=1'),
        'https://x.test/f.zip?token=abc',
      );
    });

    test('is null for what is not a web link', () {
      for (final bad in ['', '   ', 'ftp://x.com/a', 'hello', 'javascript:alert(1)', 'https://']) {
        expect(tidyUrl(bad), isNull, reason: bad);
      }
    });
  });
}
