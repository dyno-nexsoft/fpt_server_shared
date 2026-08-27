// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arb_translate_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArbTranslateResultImpl _$$ArbTranslateResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ArbTranslateResultImpl(
      module: json['module'] as String,
      targetBranch: json['target_branch'] as String,
      mrUrl: json['mr_url'] as String?,
      translatedKeyCount: (json['translated_key_count'] as num?)?.toInt() ?? 0,
      localesUpdated: (json['locales_updated'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      keysByFile: (json['keys_by_file'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const <String, int>{},
      failedKeyCount: (json['failed_key_count'] as num?)?.toInt() ?? 0,
      warnings: (json['warnings'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$ArbTranslateResultImplToJson(
    _$ArbTranslateResultImpl instance) {
  final val = <String, dynamic>{
    'module': instance.module,
    'target_branch': instance.targetBranch,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mr_url', instance.mrUrl);
  val['translated_key_count'] = instance.translatedKeyCount;
  val['locales_updated'] = instance.localesUpdated;
  val['keys_by_file'] = instance.keysByFile;
  val['failed_key_count'] = instance.failedKeyCount;
  val['warnings'] = instance.warnings;
  return val;
}
