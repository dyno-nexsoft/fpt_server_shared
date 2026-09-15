// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discord_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscordUserInfoImpl _$$DiscordUserInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscordUserInfoImpl(
      username: json['username'] as String?,
      displayName: json['display_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$DiscordUserInfoImplToJson(
    _$DiscordUserInfoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('display_name', instance.displayName);
  writeNotNull('avatar_url', instance.avatarUrl);
  return val;
}
