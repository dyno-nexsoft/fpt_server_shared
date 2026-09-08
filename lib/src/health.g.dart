// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthImpl _$$HealthImplFromJson(Map<String, dynamic> json) => _$HealthImpl(
      ok: json['ok'] as bool,
      version: json['version'] as String,
      appVersion: json['app_version'] as String,
      uptimeSeconds: (json['uptime_seconds'] as num).toInt(),
      hostname: json['hostname'] as String,
      remoteDesktopUrl: json['remote_desktop_url'] as String?,
    );

Map<String, dynamic> _$$HealthImplToJson(_$HealthImpl instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
    'version': instance.version,
    'app_version': instance.appVersion,
    'uptime_seconds': instance.uptimeSeconds,
    'hostname': instance.hostname,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('remote_desktop_url', instance.remoteDesktopUrl);
  return val;
}
