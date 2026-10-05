import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_limits.freezed.dart';
part 'app_limits.g.dart';

/// The smallest and largest value an admin may give a limit.
class LimitRange {
  const LimitRange(this.min, this.max);

  final int min;
  final int max;

  bool contains(int value) => value >= min && value <= max;
}

/// The knobs an admin can turn without a deploy: how long history is kept, how
/// long a build may run, when the daily-report sweep may close a report, and
/// how the AI is called.
///
/// Only what is worth turning is here. Protocol facts (which statuses Gemini
/// retries), Discord's own rate limits and internal tuning stay in code, where
/// a wrong value cannot be typed in by mistake.
@freezed
abstract class AppLimits with _$AppLimits {
  const AppLimits._();

  const factory AppLimits({
    /// Days a GitLab review stays in history before it is pruned.
    @Default(7) int reviewsDays,

    /// Days a translate-arb run stays in history.
    @Default(7) int translatesDays,

    /// Days a notification stays in the inbox.
    @Default(7) int notificationsDays,

    /// Minutes a build may run before it is stopped as hung.
    @Default(120) int buildTimeoutMinutes,

    /// Minutes a daily report must have been left alone (not posted or edited)
    /// before the nightly sweep finishes or closes it, so a task someone is
    /// still editing is not cut off.
    @Default(60) int reportCloseGraceMinutes,

    /// Days back the sweep looks on a day off, closing the week's reports.
    @Default(7) int reportSweepDays,

    /// Most findings one review shows; the rest are summarised as omitted.
    @Default(20) int reviewMaxIssues,

    /// Tries a request gets on one Gemini model and key before moving on.
    @Default(3) int aiAttemptsPerModel,

    /// Minutes a Gemini key that failed is left alone.
    @Default(10) int aiKeyRestMinutes,

    /// Gemini requests in flight at once, across every review and
    /// announcement.
    @Default(2) int aiMaxConcurrentRequests,

    /// Sibling models tried when the chosen one is out of capacity.
    @Default(2) int aiFallbackModels,
  }) = _AppLimits;

  factory AppLimits.fromJson(Map<String, dynamic> json) =>
      _$AppLimitsFromJson(json);

  /// Allowed values, by wire (snake_case) field name — what [problems] checks
  /// and what the dashboard offers.
  static const ranges = <String, LimitRange>{
    'reviews_days': LimitRange(1, 90),
    'translates_days': LimitRange(1, 90),
    'notifications_days': LimitRange(1, 90),
    'build_timeout_minutes': LimitRange(10, 1440),
    'report_close_grace_minutes': LimitRange(0, 720),
    'report_sweep_days': LimitRange(1, 30),
    'review_max_issues': LimitRange(1, 100),
    'ai_attempts_per_model': LimitRange(1, 6),
    'ai_key_rest_minutes': LimitRange(1, 120),
    'ai_max_concurrent_requests': LimitRange(1, 8),
    'ai_fallback_models': LimitRange(0, 4),
  };

  /// Everything out of range, in words an admin can act on — empty when fine.
  List<String> problems() {
    final json = toJson();
    return [
      for (final entry in ranges.entries)
        if (json[entry.key] case final int value)
          if (!entry.value.contains(value))
            '${entry.key} must be between ${entry.value.min} and '
                '${entry.value.max}.',
    ];
  }
}

/// `limits.set`.
@freezed
abstract class LimitsSetParams with _$LimitsSetParams {
  const factory LimitsSetParams({required AppLimits limits}) = _LimitsSetParams;

  factory LimitsSetParams.fromJson(Map<String, dynamic> json) =>
      _$LimitsSetParamsFromJson(json);
}

/// `limits.get` and `limits.set`.
@freezed
abstract class LimitsInfo with _$LimitsInfo {
  const factory LimitsInfo({required AppLimits limits}) = _LimitsInfo;

  factory LimitsInfo.fromJson(Map<String, dynamic> json) =>
      _$LimitsInfoFromJson(json);
}
