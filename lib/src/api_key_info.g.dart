// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiKeyInfoImpl _$$ApiKeyInfoImplFromJson(Map<String, dynamic> json) =>
    _$ApiKeyInfoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      keyHash: json['key_hash'] as String,
      scopes: (json['scopes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      discordUserId: _discordUserIdFromJson(json['discord_user_id']),
    );

Map<String, dynamic> _$$ApiKeyInfoImplToJson(_$ApiKeyInfoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'key_hash': instance.keyHash,
    'scopes': instance.scopes,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('discord_user_id', instance.discordUserId);
  return val;
}
