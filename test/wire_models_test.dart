import 'package:nexsoft_server_shared/nexsoft_server_shared.dart';
import 'package:test/test.dart';

void main() {
  test('JobIdParams sends job_id', () {
    expect(const JobIdParams(jobId: 'j-1').toJson(), {'job_id': 'j-1'});
    expect(JobIdParams.fromJson({'job_id': 'j-1'}).jobId, 'j-1');
  });

  group('StreamToken', () {
    const token = StreamToken(
      token: 'a+b/c',
      expiresInSeconds: 7200,
      eventsUrl: '/api/v1/jobs/j-1/events?raw=1&token=<token>',
    );

    test('fills the token into the events URL, encoded', () {
      expect(
        token.eventsUrlOn('https://ci.example.com'),
        'https://ci.example.com/api/v1/jobs/j-1/events?raw=1&token=a%2Bb%2Fc',
      );
    });

    test('round-trips through snake_case JSON', () {
      final back = StreamToken.fromJson(token.toJson());
      expect(back.token, token.token);
      expect(back.expiresInSeconds, 7200);
      expect(back.eventsUrl, token.eventsUrl);
      expect(token.toJson().keys, {
        'token',
        'expires_in_seconds',
        'events_url',
      });
    });
  });

  test('JobLogChunk round-trips and tolerates missing fields', () {
    const chunk = JobLogChunk(chunk: 'line\n', offset: 42);
    expect(chunk.toJson(), {'chunk': 'line\n', 'offset': 42});
    final back = JobLogChunk.fromJson(chunk.toJson());
    expect((back.chunk, back.offset), ('line\n', 42));
    final empty = JobLogChunk.fromJson({});
    expect((empty.chunk, empty.offset), ('', 0));
  });

  test('DashboardVersion round-trips', () {
    final version = DashboardVersion(
      commit: 'abc1234',
      builtAt: DateTime.utc(2026, 1, 2, 3, 4, 5),
    );
    final back = DashboardVersion.fromJson(version.toJson());
    expect(back.commit, 'abc1234');
    expect(back.builtAt, version.builtAt);
  });

  group('GitLab history', () {
    test('a review record parses, model included', () {
      final run = ReviewHistoryEntry.fromJson({
        'id': 'r1',
        'mr_iid': 7,
        'mr_title': 'Fix',
        'mr_url': 'https://gitlab.example.com/group/project/-/merge_requests/7',
        'state': 'done',
        'model': 'pro',
        'issues': [],
      });
      expect(run.mrIid, 7);
      expect(run.model, AiModel.pro);
      expect(run.isRunning, isFalse);
    });

    test('an old record without the newer fields still parses', () {
      final run = ReviewHistoryEntry.fromJson({'id': 'r1'});
      expect(run.model, AiModel.flash);
      expect(run.state, 'done');
      expect(
        TranslateArbHistoryEntry.fromJson({'id': 't1'}).model,
        AiModel.flash,
      );
    });

    test('the typed calls read the list keys the server sends', () async {
      final transport = _Fake({
        'gitlab.review.history': {
          'reviews': [
            {'id': 'r1', 'state': 'running'},
          ],
        },
        'gitlab.translateArb.history': {
          'records': [
            {'id': 't1', 'module': 'wallet'},
          ],
        },
      });
      final reviews = await transport.gitlabReviewHistory(
        const HistoryListParams(limit: 5),
      );
      expect(reviews.single.isRunning, isTrue);
      expect(transport.sent['gitlab.review.history'], {'limit': 5});
      final translations = await transport.gitlabTranslateArbHistory();
      expect(translations.single.module, 'wallet');
    });
  });
}

class _Fake implements ActionTransport {
  _Fake(this._replies);

  final Map<String, Map<String, dynamic>> _replies;
  final sent = <String, Map<String, Object?>>{};

  @override
  Future<Map<String, dynamic>> invokeAction(
    String name,
    Map<String, Object?> params,
  ) async {
    sent[name] = params;
    return _replies[name] ?? const {};
  }
}
