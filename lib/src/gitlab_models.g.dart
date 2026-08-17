// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gitlab_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitLabMergeRequestImpl _$$GitLabMergeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GitLabMergeRequestImpl(
      iid: (json['iid'] as num).toInt(),
      title: json['title'] as String,
      sourceBranch: json['source_branch'] as String,
      targetBranch: json['target_branch'] as String,
      authorName: _readAuthorName(json, 'author') as String,
      webUrl: json['web_url'] as String,
      state: json['state'] as String,
      description: json['description'] as String? ?? '',
      labels: (json['labels'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      changesCount: json['changes_count'] as String? ?? '0',
      sha: json['sha'] as String? ?? '',
    );

Map<String, dynamic> _$$GitLabMergeRequestImplToJson(
        _$GitLabMergeRequestImpl instance) =>
    <String, dynamic>{
      'iid': instance.iid,
      'title': instance.title,
      'source_branch': instance.sourceBranch,
      'target_branch': instance.targetBranch,
      'author': instance.authorName,
      'web_url': instance.webUrl,
      'state': instance.state,
      'description': instance.description,
      'labels': instance.labels,
      'changes_count': instance.changesCount,
      'sha': instance.sha,
    };

_$GitLabMrDiffImpl _$$GitLabMrDiffImplFromJson(Map<String, dynamic> json) =>
    _$GitLabMrDiffImpl(
      newPath: json['new_path'] as String,
      oldPath: json['old_path'] as String,
      diff: json['diff'] as String? ?? '',
      isDeleted: json['deleted_file'] as bool? ?? false,
      isRenamed: json['renamed_file'] as bool? ?? false,
      isNewFile: json['new_file'] as bool? ?? false,
    );

Map<String, dynamic> _$$GitLabMrDiffImplToJson(_$GitLabMrDiffImpl instance) =>
    <String, dynamic>{
      'new_path': instance.newPath,
      'old_path': instance.oldPath,
      'diff': instance.diff,
      'deleted_file': instance.isDeleted,
      'renamed_file': instance.isRenamed,
      'new_file': instance.isNewFile,
    };
