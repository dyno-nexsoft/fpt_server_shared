import 'package:fpt_server_shared/fpt_server_shared.dart';
import 'package:test/test.dart';

void main() {
  group('JobState', () {
    test('round-trips every real value through the wire', () {
      for (final state in JobState.values.where((s) => s != JobState.unknown)) {
        expect(JobState.fromWire(state.toWire()), state);
      }
    });

    test('an unrecognized value falls back to unknown, not a throw', () {
      expect(JobState.fromWire('some_future_state'), JobState.unknown);
    });

    test('isTerminal is everything except queued/running', () {
      expect(JobState.succeeded.isTerminal, isTrue);
      expect(JobState.failed.isTerminal, isTrue);
      expect(JobState.cancelled.isTerminal, isTrue);
      expect(JobState.interrupted.isTerminal, isTrue);
      expect(JobState.unknown.isTerminal, isTrue);
      expect(JobState.queued.isTerminal, isFalse);
      expect(JobState.running.isTerminal, isFalse);
    });
  });

  group('Permission', () {
    test('invokeDangerous serializes as snake_case on the wire', () {
      expect(Permission.invokeDangerous.toWire(), 'invoke_dangerous');
    });

    test('round-trips every value through the wire', () {
      for (final permission in Permission.values) {
        expect(Permission.fromWire(permission.toWire()), permission);
      }
    });

    test('an unrecognized wire value throws', () {
      expect(() => Permission.fromWire('bogus'), throwsArgumentError);
    });
  });

  group('ParamType', () {
    test('round-trips every value through the wire', () {
      for (final type in ParamType.values) {
        expect(ParamType.fromWire(type.toWire()), type);
      }
    });
  });

  group('Health', () {
    test('round-trips through JSON with snake_case keys', () {
      const health = Health(
        ok: true,
        version: 'v1',
        appVersion: '0.2.0',
        uptimeSeconds: 42,
        hostname: 'mac-mini-2.local',
      );
      final json = health.toJson();
      expect(json, {
        'ok': true,
        'version': 'v1',
        'app_version': '0.2.0',
        'uptime_seconds': 42,
        'hostname': 'mac-mini-2.local',
      });
      final parsed = Health.fromJson(json);
      expect(parsed.ok, health.ok);
      expect(parsed.appVersion, health.appVersion);
      expect(parsed.uptimeSeconds, health.uptimeSeconds);
    });
  });

  group('Job', () {
    test('round-trips through JSON with snake_case keys', () {
      final job = Job(
        id: 'j-abc-1',
        state: JobState.running,
        command: 'bash ./assets/build.sh',
        createdAt: DateTime.utc(2026, 1, 1),
      );
      final json = job.toJson();
      expect(json['state'], 'running');
      expect(Job.fromJson(json).state, JobState.running);
    });

    test('an unrecognized state degrades to unknown, not a throw', () {
      final json = {
        'id': 'j-abc-1',
        'state': 'some_future_state',
        'command': 'bash ./assets/build.sh',
        'created_at': DateTime.utc(2026, 1, 1).toIso8601String(),
      };
      expect(Job.fromJson(json).state, JobState.unknown);
    });

    test('isTerminal delegates to JobState', () {
      final job = Job(
        id: 'j-abc-1',
        state: JobState.succeeded,
        command: 'bash ./assets/build.sh',
        createdAt: DateTime.utc(2026, 1, 1),
      );
      expect(job.isTerminal, isTrue);
    });
  });

  group('JobEvent', () {
    test('round-trips a finished event with the state converter', () {
      final event = JobEvent.finished(
        seq: 1,
        at: DateTime.utc(2026, 1, 1),
        state: JobState.failed,
        exitCode: 1,
      );
      final json = event.toJson();
      expect(json['type'], 'finished');
      expect(json['state'], 'failed');
      expect(JobEvent.fromJson(json), event);
    });
  });

  group('ReviewIssue', () {
    // The exact bytes `gitlab.review` has been putting on the wire, from
    // before this was a shared model. Both sides used to spell these six keys
    // out by hand, in four separate places; this pins that the generated
    // definition replacing them did not quietly rename one.
    const wire = {
      'severity': 'HIGH',
      'file': 'lib/main.dart',
      'line_start': 42,
      'line_end': 47,
      'description': 'Missing await.',
      'url': 'https://gitlab/blob/lib/main.dart#L42-47',
    };

    test('parses the shape the server sends', () {
      final issue = ReviewIssue.fromJson(wire);
      expect(issue.severity, ReviewSeverity.high);
      expect(issue.lineStart, 42);
      expect(issue.lineEnd, 47);
      expect(issue.url, 'https://gitlab/blob/lib/main.dart#L42-47');
    });

    test('serializes back to the same keys, snake_case', () {
      expect(ReviewIssue.fromJson(wire).toJson(), wire);
    });

    test('an unknown severity degrades to low rather than throwing', () {
      // It originates from an AI response, so this is a real possibility —
      // and losing the whole review over one odd word would be far worse.
      final issue = ReviewIssue.fromJson({...wire, 'severity': 'CRITICAL'});
      expect(issue.severity, ReviewSeverity.low);
    });

    test('severity ranks order high above medium above low', () {
      expect(ReviewSeverity.high.rank, greaterThan(ReviewSeverity.medium.rank));
      expect(ReviewSeverity.medium.rank, greaterThan(ReviewSeverity.low.rank));
    });

    test('fromWire never throws, whatever it is handed', () {
      expect(ReviewSeverity.fromWire('medium'), ReviewSeverity.medium);
      expect(ReviewSeverity.fromWire(null), ReviewSeverity.low);
      expect(ReviewSeverity.fromWire(''), ReviewSeverity.low);
    });

    group('location', () {
      ReviewIssue at({required int start, int? end, String file = 'a.dart'}) =>
          ReviewIssue(
            severity: ReviewSeverity.low,
            file: file,
            lineStart: start,
            lineEnd: end,
            description: '',
          );

      test('cites a single line', () {
        expect(at(start: 42).location, 'a.dart:42');
      });

      test('cites a range only when it really spans lines', () {
        expect(at(start: 42, end: 47).location, 'a.dart:42-47');
        expect(at(start: 42, end: 42).location, 'a.dart:42');
      });

      test('omits the line for a pipeline notice, which has none', () {
        expect(
          at(start: 0, file: '(AI review pipeline)').location,
          '(AI review pipeline)',
        );
      });
    });
  });

  group('PlatformBuild', () {
    test('the two combined platforms use a wire spelling name can\'t', () {
      expect(PlatformBuild.androidIos.toWire(), 'android+ios');
      expect(PlatformBuild.macosWindows.toWire(), 'macos+windows');
    });

    test('every other value is still its own bare name', () {
      expect(PlatformBuild.android.toWire(), 'android');
      expect(PlatformBuild.ios.toWire(), 'ios');
      expect(PlatformBuild.macos.toWire(), 'macos');
      expect(PlatformBuild.windows.toWire(), 'windows');
    });

    test('tryParse round-trips every value through its own wire spelling', () {
      for (final platform in PlatformBuild.values) {
        expect(PlatformBuild.tryParse(platform.toWire()), platform);
      }
    });

    test('tryParse still accepts mobile/desktop — the spelling this enum used '
        'before androidIos/macosWindows replaced them, which a job persisted '
        'before that rename can still carry', () {
      expect(PlatformBuild.tryParse('mobile'), PlatformBuild.androidIos);
      expect(PlatformBuild.tryParse('desktop'), PlatformBuild.macosWindows);
    });

    test('an unrecognized value returns null, not a throw', () {
      expect(PlatformBuild.tryParse('nintendo'), isNull);
      expect(PlatformBuild.tryParse(null), isNull);
    });

    group('PlatformBuildConverter', () {
      const converter = PlatformBuildConverter();

      test('serializes through toWire, not the bare enum name', () {
        expect(converter.toJson(PlatformBuild.androidIos), 'android+ios');
      });

      test('parses back the same value it serialized', () {
        for (final platform in PlatformBuild.values) {
          expect(converter.fromJson(converter.toJson(platform)), platform);
        }
      });

      test(
        'an unrecognized wire value degrades to androidIos, not a throw',
        () {
          expect(converter.fromJson('nintendo'), PlatformBuild.androidIos);
        },
      );
    });
  });

  group('ActionSchema', () {
    test('isDangerous matches the permission', () {
      const schema = ActionSchema(
        name: 'ci.clean',
        kind: ActionKind.job,
        permission: Permission.invokeDangerous,
      );
      expect(schema.isDangerous, isTrue);
      expect(schema.toJson()['permission'], 'invoke_dangerous');
    });
  });
}
