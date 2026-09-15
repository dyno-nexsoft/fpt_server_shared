// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerInfoImpl _$$OwnerInfoImplFromJson(Map<String, dynamic> json) =>
    _$OwnerInfoImpl(
      id: json['id'] as String,
      discord: json['discord'] == null
          ? null
          : DiscordUserInfo.fromJson(json['discord'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OwnerInfoImplToJson(_$OwnerInfoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('discord', instance.discord?.toJson());
  return val;
}
