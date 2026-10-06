// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gitlab_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitlabReviewParamsImpl _$$GitlabReviewParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GitlabReviewParamsImpl(
      url: const GitLabMrUrlConverter().fromJson(json['url'] as String),
      model:
          json['model'] == null ? AiModel.flash : AiModel.parse(json['model']),
    );

Map<String, dynamic> _$$GitlabReviewParamsImplToJson(
        _$GitlabReviewParamsImpl instance) =>
    <String, dynamic>{
      'url': const GitLabMrUrlConverter().toJson(instance.url),
      'model': _$AiModelEnumMap[instance.model]!,
    };

const _$AiModelEnumMap = {
  AiModel.flash: 'flash',
  AiModel.pro: 'pro',
};

_$GitlabTranslateArbParamsImpl _$$GitlabTranslateArbParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GitlabTranslateArbParamsImpl(
      module: const TbchatModuleConverter().fromJson(json['module'] as String),
      targetBranch: json['target_branch'] as String,
      model:
          json['model'] == null ? AiModel.flash : AiModel.parse(json['model']),
    );

Map<String, dynamic> _$$GitlabTranslateArbParamsImplToJson(
        _$GitlabTranslateArbParamsImpl instance) =>
    <String, dynamic>{
      'module': const TbchatModuleConverter().toJson(instance.module),
      'target_branch': instance.targetBranch,
      'model': _$AiModelEnumMap[instance.model]!,
    };

_$HistoryListParamsImpl _$$HistoryListParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryListParamsImpl(
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$HistoryListParamsImplToJson(
    _$HistoryListParamsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('limit', instance.limit);
  return val;
}

_$HistoryDeleteParamsImpl _$$HistoryDeleteParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryDeleteParamsImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$HistoryDeleteParamsImplToJson(
        _$HistoryDeleteParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
