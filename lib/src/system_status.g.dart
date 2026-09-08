// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SystemStatusImpl _$$SystemStatusImplFromJson(Map<String, dynamic> json) =>
    _$SystemStatusImpl(
      appVersion: json['app_version'] as String,
      dartVersion: json['dart_version'] as String,
      hostname: json['hostname'] as String,
      uptimeSeconds: (json['uptime_seconds'] as num).toInt(),
      uptime: json['uptime'] as String,
      workingDirectory: json['working_directory'] as String,
      running:
          (json['running'] as List<dynamic>?)
              ?.map((e) => Job.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      queued:
          (json['queued'] as List<dynamic>?)
              ?.map((e) => Job.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SystemStatusImplToJson(_$SystemStatusImpl instance) =>
    <String, dynamic>{
      'app_version': instance.appVersion,
      'dart_version': instance.dartVersion,
      'hostname': instance.hostname,
      'uptime_seconds': instance.uptimeSeconds,
      'uptime': instance.uptime,
      'working_directory': instance.workingDirectory,
      'running': instance.running.map((e) => e.toJson()).toList(),
      'queued': instance.queued.map((e) => e.toJson()).toList(),
    };
