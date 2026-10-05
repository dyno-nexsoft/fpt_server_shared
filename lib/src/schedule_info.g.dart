// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduledJobInfoImpl _$$ScheduledJobInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduledJobInfoImpl(
      config:
          ScheduledJobConfig.fromJson(json['config'] as Map<String, dynamic>),
      rule: json['rule'] as String,
      nextRun: json['next_run'] == null
          ? null
          : DateTime.parse(json['next_run'] as String),
    );

Map<String, dynamic> _$$ScheduledJobInfoImplToJson(
    _$ScheduledJobInfoImpl instance) {
  final val = <String, dynamic>{
    'config': instance.config.toJson(),
    'rule': instance.rule,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('next_run', instance.nextRun?.toIso8601String());
  return val;
}

_$ScheduleInfoImpl _$$ScheduleInfoImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleInfoImpl(
      calendar: WorkCalendar.fromJson(json['calendar'] as Map<String, dynamic>),
      jobs: (json['jobs'] as List<dynamic>?)
              ?.map((e) => ScheduledJobInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ScheduledJobInfo>[],
    );

Map<String, dynamic> _$$ScheduleInfoImplToJson(_$ScheduleInfoImpl instance) =>
    <String, dynamic>{
      'calendar': instance.calendar.toJson(),
      'jobs': instance.jobs.map((e) => e.toJson()).toList(),
    };

_$ScheduleSetParamsImpl _$$ScheduleSetParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleSetParamsImpl(
      calendar: WorkCalendar.fromJson(json['calendar'] as Map<String, dynamic>),
      jobs: (json['jobs'] as List<dynamic>?)
          ?.map((e) => ScheduledJobConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScheduleSetParamsImplToJson(
    _$ScheduleSetParamsImpl instance) {
  final val = <String, dynamic>{
    'calendar': instance.calendar.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('jobs', instance.jobs?.map((e) => e.toJson()).toList());
  return val;
}
