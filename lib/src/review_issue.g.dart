// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewIssueImpl _$$ReviewIssueImplFromJson(Map<String, dynamic> json) =>
    _$ReviewIssueImpl(
      severity: $enumDecode(
        _$ReviewSeverityEnumMap,
        json['severity'],
        unknownValue: ReviewSeverity.low,
      ),
      file: json['file'] as String,
      lineStart: (json['line_start'] as num).toInt(),
      lineEnd: (json['line_end'] as num?)?.toInt(),
      description: json['description'] as String,
      url: json['url'] as String?,
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
  return val;
}

const _$ReviewSeverityEnumMap = {
  ReviewSeverity.high: 'HIGH',
  ReviewSeverity.medium: 'MEDIUM',
  ReviewSeverity.low: 'LOW',
};
