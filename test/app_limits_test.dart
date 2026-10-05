import 'package:fpt_server_shared/fpt_server_shared.dart';
import 'package:test/test.dart';

void main() {
  test('the defaults are the values that used to be hardcoded, and valid', () {
    const limits = AppLimits();
    expect(limits.reviewsDays, 7);
    expect(limits.buildTimeoutMinutes, 120);
    expect(limits.reportCloseGraceMinutes, 60);
    expect(limits.reviewMaxIssues, 20);
    expect(limits.aiMaxConcurrentRequests, 2);
    expect(limits.problems(), isEmpty);
  });

  test('every limit has a range, and the defaults are inside it', () {
    final json = const AppLimits().toJson();
    expect(json.keys.toSet(), AppLimits.ranges.keys.toSet());
    for (final entry in AppLimits.ranges.entries) {
      expect(
        entry.value.contains(json[entry.key] as int),
        isTrue,
        reason: entry.key,
      );
    }
  });

  test('a value outside its range is named', () {
    final problems = const AppLimits(
      buildTimeoutMinutes: 5,
      aiFallbackModels: 9,
    ).problems();
    expect(problems.length, 2);
    expect(problems.any((p) => p.startsWith('build_timeout_minutes')), isTrue);
    expect(problems.any((p) => p.startsWith('ai_fallback_models')), isTrue);
  });

  test('round-trips through snake_case JSON, missing keys falling back', () {
    const limits = AppLimits(reviewsDays: 14, aiKeyRestMinutes: 3);
    expect(limits.toJson()['reviews_days'], 14);
    expect(AppLimits.fromJson(limits.toJson()), limits);
    expect(AppLimits.fromJson(const {}), const AppLimits());
  });
}
