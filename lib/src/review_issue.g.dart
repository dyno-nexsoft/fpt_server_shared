// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewIssueImpl _$$ReviewIssueImplFromJson(Map<String, dynamic> json) =>
    _$ReviewIssueImpl(
      severity: $enumDecode(_$ReviewSeverityEnumMap, json['severity'],
          unknownValue: ReviewSeverity.low),
      file: json['file'] as String,
      lineStart: (json['line_start'] as num).toInt(),
      lineEnd: (json['line_end'] as num?)?.toInt(),
      description: json['description'] as String,
      url: json['url'] as String?,
      anchor: json['anchor'] as String?,
      discussionId: json['discussion_id'] as String?,
      category: $enumDecodeNullable(_$ReviewCategoryEnumMap, json['category'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      scenario: json['scenario'] as String?,
    );

Map<String, dynamic> _$$ReviewIssueImplToJson(_$ReviewIssueImpl instance) {
  final val = <String, dynamic>{
    'severity': _$ReviewSeverityEnumMap[instance.severity]!,
    'file': instance.file,
    'line_start': instance.lineStart,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('line_end', instance.lineEnd);
  val['description'] = instance.description;
  writeNotNull('url', instance.url);
  writeNotNull('anchor', instance.anchor);
  writeNotNull('discussion_id', instance.discussionId);
  writeNotNull('category', _$ReviewCategoryEnumMap[instance.category]);
  writeNotNull('scenario', instance.scenario);
  return val;
}

const _$ReviewSeverityEnumMap = {
  ReviewSeverity.high: 'HIGH',
  ReviewSeverity.medium: 'MEDIUM',
  ReviewSeverity.low: 'LOW',
};

const _$ReviewCategoryEnumMap = {
  ReviewCategory.bug: 'bug',
  ReviewCategory.async: 'async',
  ReviewCategory.nullSafety: 'null_safety',
  ReviewCategory.security: 'security',
  ReviewCategory.performance: 'performance',
  ReviewCategory.ui: 'ui',
  ReviewCategory.architecture: 'architecture',
  ReviewCategory.style: 'style',
};
