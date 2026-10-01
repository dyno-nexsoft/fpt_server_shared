// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestartParamsImpl _$$RestartParamsImplFromJson(Map<String, dynamic> json) =>
    _$RestartParamsImpl(
      whenIdle: json['when_idle'] as bool? ?? false,
    );

Map<String, dynamic> _$$RestartParamsImplToJson(_$RestartParamsImpl instance) =>
    <String, dynamic>{
      'when_idle': instance.whenIdle,
    };

_$HiveBoxCleanParamsImpl _$$HiveBoxCleanParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$HiveBoxCleanParamsImpl(
      box: json['box'] as String,
    );

Map<String, dynamic> _$$HiveBoxCleanParamsImplToJson(
        _$HiveBoxCleanParamsImpl instance) =>
    <String, dynamic>{
      'box': instance.box,
    };

_$CronRunParamsImpl _$$CronRunParamsImplFromJson(Map<String, dynamic> json) =>
    _$CronRunParamsImpl(
      job: json['job'] as String,
    );

Map<String, dynamic> _$$CronRunParamsImplToJson(_$CronRunParamsImpl instance) =>
    <String, dynamic>{
      'job': instance.job,
    };

_$P2pFilesDeleteParamsImpl _$$P2pFilesDeleteParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$P2pFilesDeleteParamsImpl(
      filename: json['filename'] as String,
    );

Map<String, dynamic> _$$P2pFilesDeleteParamsImplToJson(
        _$P2pFilesDeleteParamsImpl instance) =>
    <String, dynamic>{
      'filename': instance.filename,
    };
