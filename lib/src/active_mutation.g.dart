// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_mutation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActiveMutationImpl _$$ActiveMutationImplFromJson(Map<String, dynamic> json) =>
    _$ActiveMutationImpl(
      id: json['id'] as String,
      actionName: json['action_name'] as String,
      label: json['label'] as String,
      status: json['status'] as String,
      startedAt: DateTime.parse(json['started_at'] as String),
    );

Map<String, dynamic> _$$ActiveMutationImplToJson(
        _$ActiveMutationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action_name': instance.actionName,
      'label': instance.label,
      'status': instance.status,
      'started_at': instance.startedAt.toIso8601String(),
    };
