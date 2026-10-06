// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_model_ids.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AiModelIdsImpl _$$AiModelIdsImplFromJson(Map<String, dynamic> json) =>
    _$AiModelIdsImpl(
      geminiFlash: json['gemini_flash'] as String? ?? 'gemini-3.6-flash',
      geminiPro: json['gemini_pro'] as String? ?? 'gemini-3.1-pro',
      groqFlash: json['groq_flash'] as String? ?? 'openai/gpt-oss-20b',
      groqPro: json['groq_pro'] as String? ?? 'openai/gpt-oss-120b',
    );

Map<String, dynamic> _$$AiModelIdsImplToJson(_$AiModelIdsImpl instance) =>
    <String, dynamic>{
      'gemini_flash': instance.geminiFlash,
      'gemini_pro': instance.geminiPro,
      'groq_flash': instance.groqFlash,
      'groq_pro': instance.groqPro,
    };
