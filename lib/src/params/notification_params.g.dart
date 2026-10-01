// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarkNotificationsReadParamsImpl _$$MarkNotificationsReadParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$MarkNotificationsReadParamsImpl(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$$MarkNotificationsReadParamsImplToJson(
        _$MarkNotificationsReadParamsImpl instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

_$AnnounceNotificationParamsImpl _$$AnnounceNotificationParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnounceNotificationParamsImpl(
      title: json['title'] as String,
      body: json['body'] as String,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$AnnounceNotificationParamsImplToJson(
    _$AnnounceNotificationParamsImpl instance) {
  final val = <String, dynamic>{
    'title': instance.title,
    'body': instance.body,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('path', instance.path);
  return val;
}

_$RemoveNotificationParamsImpl _$$RemoveNotificationParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoveNotificationParamsImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$RemoveNotificationParamsImplToJson(
        _$RemoveNotificationParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
