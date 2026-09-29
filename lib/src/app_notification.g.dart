// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppNotificationImpl _$$AppNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$AppNotificationImpl(
      id: json['id'] as String,
      kind: json['kind'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      path: json['path'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      read: json['read'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppNotificationImplToJson(
    _$AppNotificationImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'kind': instance.kind,
    'title': instance.title,
    'body': instance.body,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('path', instance.path);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['read'] = instance.read;
  return val;
}
