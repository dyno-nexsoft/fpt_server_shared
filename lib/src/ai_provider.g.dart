// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AiProviderSetParamsImpl _$$AiProviderSetParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$AiProviderSetParamsImpl(
      provider: json['provider'] as String,
      failover: json['failover'] as bool?,
    );

Map<String, dynamic> _$$AiProviderSetParamsImplToJson(
    _$AiProviderSetParamsImpl instance) {
  final val = <String, dynamic>{
    'provider': instance.provider,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('failover', instance.failover);
  return val;
}

_$AiProviderInfoImpl _$$AiProviderInfoImplFromJson(Map<String, dynamic> json) =>
    _$AiProviderInfoImpl(
      provider: json['provider'] as String,
      available: (json['available'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      failover: json['failover'] as bool? ?? true,
    );

Map<String, dynamic> _$$AiProviderInfoImplToJson(
        _$AiProviderInfoImpl instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'available': instance.available,
      'failover': instance.failover,
    };
