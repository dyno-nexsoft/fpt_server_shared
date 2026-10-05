// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_prompts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AiPromptsImpl _$$AiPromptsImplFromJson(Map<String, dynamic> json) =>
    _$AiPromptsImpl(
      reviewIntro: json['review_intro'] as String,
      reviewConventions: json['review_conventions'] as String,
      translatorIntro: json['translator_intro'] as String,
    );

Map<String, dynamic> _$$AiPromptsImplToJson(_$AiPromptsImpl instance) =>
    <String, dynamic>{
      'review_intro': instance.reviewIntro,
      'review_conventions': instance.reviewConventions,
      'translator_intro': instance.translatorIntro,
    };

_$AiPromptsSetParamsImpl _$$AiPromptsSetParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$AiPromptsSetParamsImpl(
      prompts: AiPrompts.fromJson(json['prompts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AiPromptsSetParamsImplToJson(
        _$AiPromptsSetParamsImpl instance) =>
    <String, dynamic>{
      'prompts': instance.prompts.toJson(),
    };

_$AiPromptsInfoImpl _$$AiPromptsInfoImplFromJson(Map<String, dynamic> json) =>
    _$AiPromptsInfoImpl(
      prompts: AiPrompts.fromJson(json['prompts'] as Map<String, dynamic>),
      defaults: AiPrompts.fromJson(json['defaults'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AiPromptsInfoImplToJson(_$AiPromptsInfoImpl instance) =>
    <String, dynamic>{
      'prompts': instance.prompts.toJson(),
      'defaults': instance.defaults.toJson(),
    };
