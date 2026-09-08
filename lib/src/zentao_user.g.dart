// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zentao_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZentaoUserImpl _$$ZentaoUserImplFromJson(Map<String, dynamic> json) =>
    _$ZentaoUserImpl(
      account: json['account'] as String,
      password: json['password'] as String,
      module: (json['module'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ZentaoUserImplToJson(_$ZentaoUserImpl instance) {
  final val = <String, dynamic>{
    'account': instance.account,
    'password': instance.password,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('module', instance.module);
  return val;
}
