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

    test('isTerminal matches the terminal states', () {
      expect(JobState.succeeded.isTerminal, isTrue);
      expect(JobState.failed.isTerminal, isTrue);
      expect(JobState.cancelled.isTerminal, isTrue);
      expect(JobState.queued.isTerminal, isFalse);
      expect(JobState.running.isTerminal, isFalse);
      expect(JobState.interrupted.isTerminal, isFalse);
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
}
