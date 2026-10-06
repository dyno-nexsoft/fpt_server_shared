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
      geminiFlash: json['gemini_flash'] as String?,
      geminiPro: json['gemini_pro'] as String?,
      groqFlash: json['groq_flash'] as String?,
      groqPro: json['groq_pro'] as String?,
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
  writeNotNull('gemini_flash', instance.geminiFlash);
  writeNotNull('gemini_pro', instance.geminiPro);
  writeNotNull('groq_flash', instance.groqFlash);
  writeNotNull('groq_pro', instance.groqPro);
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
      models: json['models'] == null
          ? const AiModelIds()
          : AiModelIds.fromJson(json['models'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AiProviderInfoImplToJson(
        _$AiProviderInfoImpl instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'available': instance.available,
      'failover': instance.failover,
      'models': instance.models.toJson(),
    };
