// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActionSchemaImpl _$$ActionSchemaImplFromJson(Map<String, dynamic> json) =>
    _$ActionSchemaImpl(
      name: json['name'] as String,
      description: json['description'] as String? ?? '',
      kind: $enumDecode(_$ActionKindEnumMap, json['kind']),
      permission:
          const PermissionConverter().fromJson(json['permission'] as String),
      params: (json['params'] as List<dynamic>?)
              ?.map((e) => ActionParam.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      supportsProgress: json['supports_progress'] as bool? ?? false,
    );

Map<String, dynamic> _$$ActionSchemaImplToJson(_$ActionSchemaImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'kind': _$ActionKindEnumMap[instance.kind]!,
      'permission': const PermissionConverter().toJson(instance.permission),
      'params': instance.params.map((e) => e.toJson()).toList(),
      'supports_progress': instance.supportsProgress,
    };

const _$ActionKindEnumMap = {
  ActionKind.query: 'query',
  ActionKind.mutation: 'mutation',
  ActionKind.job: 'job',
};

_$ActionParamImpl _$$ActionParamImplFromJson(Map<String, dynamic> json) =>
    _$ActionParamImpl(
      name: json['name'] as String,
      description: json['description'] as String? ?? '',
      type: $enumDecode(_$ParamTypeEnumMap, json['type']),
      isRequired: json['required'] as bool? ?? false,
      choices: (json['choices'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      defaultValue: json['default'],
      isBranchRef: json['is_branch_ref'] as bool? ?? false,
      isStringList: json['is_string_list'] as bool? ?? false,
    );

Map<String, dynamic> _$$ActionParamImplToJson(_$ActionParamImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'description': instance.description,
    'type': _$ParamTypeEnumMap[instance.type]!,
    'required': instance.isRequired,
    'choices': instance.choices,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('default', instance.defaultValue);
  val['is_branch_ref'] = instance.isBranchRef;
  val['is_string_list'] = instance.isStringList;
  return val;
}

const _$ParamTypeEnumMap = {
  ParamType.string: 'string',
  ParamType.integer: 'integer',
  ParamType.number: 'number',
  ParamType.boolean: 'boolean',
  ParamType.enumeration: 'enumeration',
};
