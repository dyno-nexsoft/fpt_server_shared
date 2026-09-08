// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artifact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtifactFileImpl _$$ArtifactFileImplFromJson(Map<String, dynamic> json) =>
    _$ArtifactFileImpl(
      name: json['name'] as String,
      isDirectory: json['is_directory'] as bool? ?? false,
      size: (json['size'] as num?)?.toInt(),
      modified: DateTime.parse(json['modified'] as String),
    );

Map<String, dynamic> _$$ArtifactFileImplToJson(_$ArtifactFileImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'is_directory': instance.isDirectory,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('size', instance.size);
  val['modified'] = instance.modified.toIso8601String();
  return val;
}

_$ArtifactListingImpl _$$ArtifactListingImplFromJson(
  Map<String, dynamic> json,
) => _$ArtifactListingImpl(
  key: json['key'] as String,
  files:
      (json['files'] as List<dynamic>?)
          ?.map((e) => ArtifactFile.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  job: json['job'] == null
      ? null
      : Job.fromJson(json['job'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ArtifactListingImplToJson(
  _$ArtifactListingImpl instance,
) {
  final val = <String, dynamic>{
    'key': instance.key,
    'files': instance.files.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('job', instance.job?.toJson());
  return val;
}
