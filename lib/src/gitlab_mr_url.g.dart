// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gitlab_mr_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitLabMrUrlImpl _$$GitLabMrUrlImplFromJson(Map<String, dynamic> json) =>
    _$GitLabMrUrlImpl(
      projectPath: json['project_path'] as String,
      mrIid: (json['mr_iid'] as num).toInt(),
    );

Map<String, dynamic> _$$GitLabMrUrlImplToJson(_$GitLabMrUrlImpl instance) =>
    <String, dynamic>{
      'project_path': instance.projectPath,
      'mr_iid': instance.mrIid,
    };
