// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_limits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppLimitsImpl _$$AppLimitsImplFromJson(Map<String, dynamic> json) =>
    _$AppLimitsImpl(
      reviewsDays: (json['reviews_days'] as num?)?.toInt() ?? 7,
      translatesDays: (json['translates_days'] as num?)?.toInt() ?? 7,
      notificationsDays: (json['notifications_days'] as num?)?.toInt() ?? 7,
      buildTimeoutMinutes:
          (json['build_timeout_minutes'] as num?)?.toInt() ?? 120,
      reportSweepDays: (json['report_sweep_days'] as num?)?.toInt() ?? 7,
      reviewMaxIssues: (json['review_max_issues'] as num?)?.toInt() ?? 20,
      aiAttemptsPerModel: (json['ai_attempts_per_model'] as num?)?.toInt() ?? 3,
      aiKeyRestMinutes: (json['ai_key_rest_minutes'] as num?)?.toInt() ?? 10,
      aiMaxConcurrentRequests:
          (json['ai_max_concurrent_requests'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$AppLimitsImplToJson(_$AppLimitsImpl instance) =>
    <String, dynamic>{
      'reviews_days': instance.reviewsDays,
      'translates_days': instance.translatesDays,
      'notifications_days': instance.notificationsDays,
      'build_timeout_minutes': instance.buildTimeoutMinutes,
      'report_sweep_days': instance.reportSweepDays,
      'review_max_issues': instance.reviewMaxIssues,
      'ai_attempts_per_model': instance.aiAttemptsPerModel,
      'ai_key_rest_minutes': instance.aiKeyRestMinutes,
      'ai_max_concurrent_requests': instance.aiMaxConcurrentRequests,
    };

_$LimitsSetParamsImpl _$$LimitsSetParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$LimitsSetParamsImpl(
      limits: AppLimits.fromJson(json['limits'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LimitsSetParamsImplToJson(
        _$LimitsSetParamsImpl instance) =>
    <String, dynamic>{
      'limits': instance.limits.toJson(),
    };

_$LimitsInfoImpl _$$LimitsInfoImplFromJson(Map<String, dynamic> json) =>
    _$LimitsInfoImpl(
      limits: AppLimits.fromJson(json['limits'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LimitsInfoImplToJson(_$LimitsInfoImpl instance) =>
    <String, dynamic>{
      'limits': instance.limits.toJson(),
    };
