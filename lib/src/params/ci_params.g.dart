// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ci_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CiBuildParamsImpl _$$CiBuildParamsImplFromJson(Map<String, dynamic> json) =>
    _$CiBuildParamsImpl(
      tbchat: json['tbchat'] as String,
      database: json['database'] as String,
      im: json['im'] as String?,
      wallet: json['wallet'] as String?,
      cloudStorage: json['cloud_storage'] as String?,
      socialfi: json['socialfi'] as String?,
      platform: json['platform'] == null
          ? PlatformBuild.androidIos
          : const PlatformBuildConverter().fromJson(json['platform'] as String),
      environment:
          $enumDecodeNullable(_$EnvironmentBuildEnumMap, json['environment']) ??
              EnvironmentBuild.dev,
      releaseNotes: json['release_notes'] as String?,
      buildName: json['build_name'] as String?,
      buildNumber: (json['build_number'] as num?)?.toInt(),
      skipFirebaseDistribution:
          json['skip_firebase_distribution'] as bool? ?? false,
    );

Map<String, dynamic> _$$CiBuildParamsImplToJson(_$CiBuildParamsImpl instance) {
  final val = <String, dynamic>{
    'tbchat': instance.tbchat,
    'database': instance.database,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('im', instance.im);
  writeNotNull('wallet', instance.wallet);
  writeNotNull('cloud_storage', instance.cloudStorage);
  writeNotNull('socialfi', instance.socialfi);
  val['platform'] = const PlatformBuildConverter().toJson(instance.platform);
  val['environment'] = _$EnvironmentBuildEnumMap[instance.environment]!;
  writeNotNull('release_notes', instance.releaseNotes);
  writeNotNull('build_name', instance.buildName);
  writeNotNull('build_number', instance.buildNumber);
  writeNotNull('skip_firebase_distribution',
      _onlyWhenTrue(instance.skipFirebaseDistribution));
  return val;
}

const _$EnvironmentBuildEnumMap = {
  EnvironmentBuild.dev: 'dev',
  EnvironmentBuild.test: 'test',
  EnvironmentBuild.prod: 'prod',
};

_$CiGenParamsImpl _$$CiGenParamsImplFromJson(Map<String, dynamic> json) =>
    _$CiGenParamsImpl(
      environment:
          $enumDecodeNullable(_$EnvironmentBuildEnumMap, json['environment']) ??
              EnvironmentBuild.dev,
      socialfi: json['socialfi'] as String?,
    );

Map<String, dynamic> _$$CiGenParamsImplToJson(_$CiGenParamsImpl instance) {
  final val = <String, dynamic>{
    'environment': _$EnvironmentBuildEnumMap[instance.environment]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('socialfi', instance.socialfi);
  return val;
}

_$CiReplaceParamsImpl _$$CiReplaceParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CiReplaceParamsImpl(
      url: json['url'] as String,
      tbchat: json['tbchat'] as String,
    );

Map<String, dynamic> _$$CiReplaceParamsImplToJson(
        _$CiReplaceParamsImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'tbchat': instance.tbchat,
    };

_$CiCleanParamsImpl _$$CiCleanParamsImplFromJson(Map<String, dynamic> json) =>
    _$CiCleanParamsImpl(
      mode: json['mode'] as String?,
    );

Map<String, dynamic> _$$CiCleanParamsImplToJson(_$CiCleanParamsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mode', instance.mode);
  return val;
}
