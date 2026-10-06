import 'package:fpt_server_shared/fpt_server_shared.dart';
import 'package:test/test.dart';

/// Records what a typed call puts on the wire and answers with [reply].
class _Recorder implements ActionTransport {
  _Recorder([this.reply = const {}]);

  final Map<String, dynamic> reply;
  final calls = <(String, Map<String, Object?>)>[];

  @override
  Future<Map<String, dynamic>> invokeAction(
    String name,
    Map<String, Object?> params,
  ) async {
    calls.add((name, params));
    return reply;
  }
}

void main() {
  test('params go out snake_case, with unset optionals left off', () async {
    final t = _Recorder();
    await t.logsTail(const LogsTailParams(fromLine: 10, toLine: 20));
    await t.restart(const RestartParams(whenIdle: true));
    await t.apiKeysEdit(const ApiKeyEditParams(id: 'a', scopes: ['read']));
    await t.ownersAdd(const OwnerParams(userId: '42'));
    expect(t.calls.map((c) => c.$1), [
      'admin.logs.tail',
      'system.restart',
      'admin.apiKeys.edit',
      'admin.owners.add',
    ]);
    expect(t.calls.map((c) => c.$2), [
      {'from_line': 10, 'to_line': 20},
      {'when_idle': true},
      {
        'id': 'a',
        'scopes': ['read'],
      },
      {'user_id': '42'},
    ]);
  });

  test('a call with no params sends an empty object', () async {
    final t = _Recorder({'keys': []});
    await t.apiKeysList();
    await t.notificationsMarkRead();
    expect(t.calls[0].$1, 'admin.apiKeys.list');
    expect(t.calls[0].$2, isEmpty);
    expect(t.calls[1].$1, 'notifications.markRead');
    expect(t.calls[1].$2, {'ids': <String>[]});
  });

  test('every params class round-trips through its own json', () {
    final cases = <Object>[
      const ApiKeyAddParams(name: 'n'),
      const ApiKeyEditParams(id: 'i', scopes: ['admin'], name: 'x'),
      const ApiKeyRemoveParams(id: 'i'),
      const OwnerParams(userId: '1'),
      const LogsTailParams(lines: 5, source: 'novnc', fromLine: 1, toLine: 9),
      const MarkNotificationsReadParams(ids: ['a', 'b']),
      const AnnounceNotificationParams(title: 't', body: 'b', path: '/x'),
      const RemoveNotificationParams(id: 'n'),
      const RestartParams(whenIdle: true),
      const HiveBoxCleanParams(box: 'b'),
      const CronRunParams(job: 'j'),
      const P2pFilesDeleteParams(filename: 'f'),
    ];
    final back = <Object>[
      ApiKeyAddParams.fromJson(const ApiKeyAddParams(name: 'n').toJson()),
      ApiKeyEditParams.fromJson(
        const ApiKeyEditParams(id: 'i', scopes: ['admin'], name: 'x').toJson(),
      ),
      ApiKeyRemoveParams.fromJson(const ApiKeyRemoveParams(id: 'i').toJson()),
      OwnerParams.fromJson(const OwnerParams(userId: '1').toJson()),
      LogsTailParams.fromJson(
        const LogsTailParams(
          lines: 5,
          source: 'novnc',
          fromLine: 1,
          toLine: 9,
        ).toJson(),
      ),
      MarkNotificationsReadParams.fromJson(
        const MarkNotificationsReadParams(ids: ['a', 'b']).toJson(),
      ),
      AnnounceNotificationParams.fromJson(
        const AnnounceNotificationParams(
          title: 't',
          body: 'b',
          path: '/x',
        ).toJson(),
      ),
      RemoveNotificationParams.fromJson(
        const RemoveNotificationParams(id: 'n').toJson(),
      ),
      RestartParams.fromJson(const RestartParams(whenIdle: true).toJson()),
      HiveBoxCleanParams.fromJson(const HiveBoxCleanParams(box: 'b').toJson()),
      CronRunParams.fromJson(const CronRunParams(job: 'j').toJson()),
      P2pFilesDeleteParams.fromJson(
        const P2pFilesDeleteParams(filename: 'f').toJson(),
      ),
    ];
    expect(back, cases);
  });

  test('results decode what the server sends', () async {
    final created = await _Recorder({
      'id': 'k1',
      'secret': 's',
      'role': 'admin',
    }).apiKeysAdd(const ApiKeyAddParams(name: 'n'));
    expect(
      (created.id, created.secret, created.role),
      ('k1', 's', ApiKeyRole.admin),
    );

    final tail = await _Recorder({
      'lines': ['a', 'b'],
      'first_line': 41,
      'total_lines': 42,
    }).logsTail();
    expect(tail.lines, ['a', 'b']);
    expect(tail.firstLine, 41);
    expect(tail.totalLines, 42);

    final list = await _Recorder({
      'current_key_id': 'k1',
      'keys': [
        {
          'id': 'k1',
          'name': 'Me',
          'key_hash': 'h',
          'scopes': ['admin'],
        },
      ],
    }).apiKeysList();
    expect(list.currentKeyId, 'k1');
    expect(list.keys.single.name, 'Me');

    final owners = await _Recorder({
      'owners': [
        {'id': '1'},
      ],
    }).ownersList();
    expect(owners.owners.single.id, '1');
  });

  group('CI params', () {
    test('a build with only the required fields sends its defaults', () {
      expect(const CiBuildParams(tbchat: 'a', database: 'b').toJson(), {
        'tbchat': 'a',
        'database': 'b',
        'platform': 'android,ios',
        'environment': 'dev',
        'skip_firebase_distribution': false,
      });
    });

    test('every field uses the keys the server reads', () {
      const params = CiBuildParams(
        tbchat: 'a',
        database: 'b',
        im: 'i',
        wallet: 'w',
        cloudStorage: 'c',
        socialfi: 's',
        platform: PlatformBuild.macosWindows,
        environment: EnvironmentBuild.prod,
        releaseNotes: 'notes',
        buildName: '1.2.3',
        buildNumber: 42,
        skipFirebaseDistribution: true,
      );
      expect(params.toJson().keys.toSet(), {
        'tbchat',
        'database',
        'im',
        'wallet',
        'cloud_storage',
        'socialfi',
        'platform',
        'environment',
        'release_notes',
        'build_name',
        'build_number',
        'skip_firebase_distribution',
      });
      expect(params.toJson()['platform'], 'macos,windows');
      expect(CiBuildParams.fromJson(params.toJson()), params);
    });

    test('gen, replace and clean round-trip', () {
      const gen = CiGenParams(
        environment: EnvironmentBuild.test,
        socialfi: 'branch',
      );
      const replace = CiReplaceParams(url: 'https://sdk.example', tbchat: 'x');
      const clean = CiCleanParams(mode: 'files');
      expect(CiGenParams.fromJson(gen.toJson()), gen);
      expect(CiReplaceParams.fromJson(replace.toJson()), replace);
      expect(CiCleanParams.fromJson(clean.toJson()), clean);
      expect(const CiCleanParams().toJson(), isEmpty);
    });
  });

  group('GitLab params', () {
    test('the MR goes out as one string, the module by its wire name', () {
      final review = GitlabReviewParams(
        url: GitLabMrUrl(projectPath: 'group/app', mrIid: 12),
        model: AiModel.pro31,
      );
      expect(review.toJson(), {'url': 'group/app!12', 'model': 'pro31'});
      expect(GitlabReviewParams.fromJson(review.toJson()), review);

      const translate = GitlabTranslateArbParams(
        module: TbchatModule.cloudStorage,
        targetBranch: 'develop',
      );
      final json = translate.toJson();
      expect(json['module'], TbchatModule.cloudStorage.toWire());
      expect(json['target_branch'], 'develop');
      expect(json['model'], 'flash36');
      expect(GitlabTranslateArbParams.fromJson(json), translate);
    });

    test('a pasted MR url is read, a bad one is refused', () {
      final params = GitlabReviewParams.fromJson({
        'url': 'https://git.example.com/group/app/-/merge_requests/7/diffs',
      });
      expect(params.url.storeKey, 'group/app!7');
      expect(
        () => GitlabReviewParams.fromJson({'url': 'nonsense'}),
        throwsFormatException,
      );
    });

    test('history params', () {
      expect(const HistoryListParams().toJson(), isEmpty);
      expect(const HistoryListParams(limit: 5).toJson(), {'limit': 5});
      expect(const HistoryDeleteParams(id: 'gr-1').toJson(), {'id': 'gr-1'});
    });
  });

  group('Zentao params', () {
    test('keys are the ones the actions read', () {
      expect(const ZentaoTaskParams(taskId: 7).toJson(), {'task_id': 7});
      expect(
        const ZentaoReportEditParams(taskId: 7, description: 'x').toJson(),
        {'task_id': 7, 'description': 'x'},
      );
      expect(const ZentaoProjectParams(projectId: 3).toJson(), {
        'project_id': 3,
      });
      expect(const ZentaoExecutionParams(executionId: 4).toJson(), {
        'execution_id': 4,
      });
      expect(const ZentaoLinkParams(account: 'a', password: 'p').toJson(), {
        'account': 'a',
        'password': 'p',
      });
    });

    test('an empty description is sent, not dropped — it clears the text', () {
      expect(const ZentaoReportStartParams().toJson(), {'description': ''});
      expect(const ZentaoReportEditParams(taskId: 1).toJson(), {
        'task_id': 1,
        'description': '',
      });
    });
  });

  test('ActionMessage reads message, falling back to summary', () {
    expect(ActionMessage.fromJson({'message': 'm'}).message, 'm');
    expect(ActionMessage.fromJson({'summary': 's', 'task_id': 1}).message, 's');
    expect(ActionMessage.fromJson(const {}).message, 'Done');
  });

  test('a started report names its task', () async {
    final started = await _Recorder({
      'task_id': 9,
      'summary': 'Created task #9.',
    }).zentaoReportStart();
    expect(started.taskId, 9);
    expect(started.message, 'Created task #9.');
  });
}
