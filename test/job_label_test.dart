import 'package:nexsoft_server_shared/nexsoft_server_shared.dart';
import 'package:test/test.dart';

void main() {
  test('an action gets a short name, an unknown one keeps its own', () {
    expect(actionLabel('ci.reposts'), 'Repost');
    expect(actionLabel('ci.build'), 'Build');
    expect(actionLabel('gitlab.review'), 'gitlab.review');
    expect(actionLabel(null), 'Job');
  });

  test('a repost names the account and the environment', () {
    expect(
      jobSubject('ci.reposts', {
        'url': 'https://www.tiktok.com/@gioilee299',
        'environment': 'dev',
        'limit': 3,
      }),
      '@gioilee299 · dev',
    );
    expect(
      jobSubject('ci.reposts', {
        'url': 'https://www.tiktok.com/@a.b/video/7694',
        'environment': 'test',
      }),
      '@a.b · test',
    );
    expect(
      jobSubject('ci.reposts', {
        'url': 'https://www.youtube.com/watch?v=abc',
        'environment': 'dev',
      }),
      'video abc · dev',
    );
  });

  test('a build names the platform, environment and branch', () {
    expect(
      jobSubject('ci.build', {
        'platform': 'ios',
        'environment': 'dev',
        'tbchat': 'feat/x',
      }),
      'ios · dev · feat/x',
    );
  });

  test('nothing to say gives null', () {
    expect(jobSubject('ci.clean', {}), isNull);
  });
}
