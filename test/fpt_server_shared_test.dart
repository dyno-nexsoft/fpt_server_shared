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
