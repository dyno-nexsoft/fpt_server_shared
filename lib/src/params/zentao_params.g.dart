// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zentao_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZentaoReportStartParamsImpl _$$ZentaoReportStartParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ZentaoReportStartParamsImpl(
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$ZentaoReportStartParamsImplToJson(
        _$ZentaoReportStartParamsImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
    };

_$ZentaoReportEditParamsImpl _$$ZentaoReportEditParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ZentaoReportEditParamsImpl(
      taskId: (json['task_id'] as num).toInt(),
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$ZentaoReportEditParamsImplToJson(
        _$ZentaoReportEditParamsImpl instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'description': instance.description,
    };

_$ZentaoTaskParamsImpl _$$ZentaoTaskParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ZentaoTaskParamsImpl(
      taskId: (json['task_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ZentaoTaskParamsImplToJson(
        _$ZentaoTaskParamsImpl instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
    };

_$ZentaoLinkParamsImpl _$$ZentaoLinkParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ZentaoLinkParamsImpl(
      account: json['account'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$ZentaoLinkParamsImplToJson(
        _$ZentaoLinkParamsImpl instance) =>
    <String, dynamic>{
      'account': instance.account,
      'password': instance.password,
    };

_$ZentaoProjectParamsImpl _$$ZentaoProjectParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ZentaoProjectParamsImpl(
      projectId: (json['project_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ZentaoProjectParamsImplToJson(
        _$ZentaoProjectParamsImpl instance) =>
    <String, dynamic>{
      'project_id': instance.projectId,
    };

_$ZentaoExecutionParamsImpl _$$ZentaoExecutionParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ZentaoExecutionParamsImpl(
      executionId: (json['execution_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ZentaoExecutionParamsImplToJson(
        _$ZentaoExecutionParamsImpl instance) =>
    <String, dynamic>{
      'execution_id': instance.executionId,
    };
