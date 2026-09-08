// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
  id: json['id'] as String,
  state: const JobStateConverter().fromJson(json['state'] as String),
  command: json['command'] as String,
  actionName: json['action_name'] as String?,
  actionParams: json['action_params'] as Map<String, dynamic>? ?? const {},
  environments: json['environments'] as Map<String, dynamic>? ?? const {},
  createdBy: json['created_by'] as String?,
  artifactKey: (json['artifact_key'] as num?)?.toInt(),
  promoted: json['promoted'] as bool? ?? false,
  announce: json['announce'] as bool? ?? false,
  createdAt: DateTime.parse(json['created_at'] as String),
  startedAt: json['started_at'] == null
      ? null
      : DateTime.parse(json['started_at'] as String),
  finishedAt: json['finished_at'] == null
      ? null
      : DateTime.parse(json['finished_at'] as String),
  exitCode: (json['exit_code'] as num?)?.toInt(),
  lastLine: json['last_line'] as String?,
  lastSeq: (json['last_seq'] as num?)?.toInt() ?? 0,
  discord: json['discord'] == null
      ? null
      : DiscordMessageRef.fromJson(json['discord'] as Map<String, dynamic>),
  resumedFrom: json['resumed_from'] as String?,
  cancelledBy: json['cancelled_by'] as String?,
  logUrl: json['log_url'] as String?,
  warnings:
      (json['warnings'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  message: json['message'] as String?,
);

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'state': const JobStateConverter().toJson(instance.state),
    'command': instance.command,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action_name', instance.actionName);
  val['action_params'] = instance.actionParams;
  val['environments'] = instance.environments;
  writeNotNull('created_by', instance.createdBy);
  writeNotNull('artifact_key', instance.artifactKey);
  val['promoted'] = instance.promoted;
  val['announce'] = instance.announce;
  val['created_at'] = instance.createdAt.toIso8601String();
  writeNotNull('started_at', instance.startedAt?.toIso8601String());
  writeNotNull('finished_at', instance.finishedAt?.toIso8601String());
  writeNotNull('exit_code', instance.exitCode);
  writeNotNull('last_line', instance.lastLine);
  val['last_seq'] = instance.lastSeq;
  writeNotNull('discord', instance.discord?.toJson());
  writeNotNull('resumed_from', instance.resumedFrom);
  writeNotNull('cancelled_by', instance.cancelledBy);
  writeNotNull('log_url', instance.logUrl);
  val['warnings'] = instance.warnings;
  writeNotNull('message', instance.message);
  return val;
}
