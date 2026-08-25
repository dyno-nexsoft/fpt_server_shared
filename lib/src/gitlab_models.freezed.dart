// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gitlab_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GitLabMergeRequest _$GitLabMergeRequestFromJson(Map<String, dynamic> json) {
  return _GitLabMergeRequest.fromJson(json);
}

/// @nodoc
mixin _$GitLabMergeRequest {
  /// Internal ID of the MR within its project (the `!123` number on GitLab).
  int get iid => throw _privateConstructorUsedError;

  /// Title of the Merge Request.
  String get title => throw _privateConstructorUsedError;

  /// Source branch name (feature branch).
  String get sourceBranch => throw _privateConstructorUsedError;

  /// Target branch name (usually `develop` or `main`).
  String get targetBranch => throw _privateConstructorUsedError;

  /// Display name of the author on GitLab.
  @JsonKey(name: 'author', readValue: _readAuthorName)
  String get authorName => throw _privateConstructorUsedError;

  /// Full URL to open the MR in a browser.
  String get webUrl => throw _privateConstructorUsedError;

  /// Current state: `opened`, `closed`, `merged`, or `locked`.
  String get state => throw _privateConstructorUsedError;

  /// Description written by the author, may be empty.
  String get description => throw _privateConstructorUsedError;

  /// Labels applied to this merge request.
  List<String> get labels => throw _privateConstructorUsedError;

  /// Number of changed files as reported by GitLab (e.g. "15").
  String get changesCount => throw _privateConstructorUsedError;

  /// Head commit SHA of the source branch at the time of the API call.
  ///
  /// Used by the cron job to detect new commits and trigger re-reviews.
  String get sha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitLabMergeRequestCopyWith<GitLabMergeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitLabMergeRequestCopyWith<$Res> {
  factory $GitLabMergeRequestCopyWith(
    GitLabMergeRequest value,
    $Res Function(GitLabMergeRequest) then,
  ) = _$GitLabMergeRequestCopyWithImpl<$Res, GitLabMergeRequest>;
  @useResult
  $Res call({
    int iid,
    String title,
    String sourceBranch,
    String targetBranch,
    @JsonKey(name: 'author', readValue: _readAuthorName) String authorName,
    String webUrl,
    String state,
    String description,
    List<String> labels,
    String changesCount,
    String sha,
  });
}

/// @nodoc
class _$GitLabMergeRequestCopyWithImpl<$Res, $Val extends GitLabMergeRequest>
    implements $GitLabMergeRequestCopyWith<$Res> {
  _$GitLabMergeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iid = null,
    Object? title = null,
    Object? sourceBranch = null,
    Object? targetBranch = null,
    Object? authorName = null,
    Object? webUrl = null,
    Object? state = null,
    Object? description = null,
    Object? labels = null,
    Object? changesCount = null,
    Object? sha = null,
  }) {
    return _then(
      _value.copyWith(
            iid: null == iid
                ? _value.iid
                : iid // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            sourceBranch: null == sourceBranch
                ? _value.sourceBranch
                : sourceBranch // ignore: cast_nullable_to_non_nullable
                      as String,
            targetBranch: null == targetBranch
                ? _value.targetBranch
                : targetBranch // ignore: cast_nullable_to_non_nullable
                      as String,
            authorName: null == authorName
                ? _value.authorName
                : authorName // ignore: cast_nullable_to_non_nullable
                      as String,
            webUrl: null == webUrl
                ? _value.webUrl
                : webUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            state: null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            labels: null == labels
                ? _value.labels
                : labels // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            changesCount: null == changesCount
                ? _value.changesCount
                : changesCount // ignore: cast_nullable_to_non_nullable
                      as String,
            sha: null == sha
                ? _value.sha
                : sha // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GitLabMergeRequestImplCopyWith<$Res>
    implements $GitLabMergeRequestCopyWith<$Res> {
  factory _$$GitLabMergeRequestImplCopyWith(
    _$GitLabMergeRequestImpl value,
    $Res Function(_$GitLabMergeRequestImpl) then,
  ) = __$$GitLabMergeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int iid,
    String title,
    String sourceBranch,
    String targetBranch,
    @JsonKey(name: 'author', readValue: _readAuthorName) String authorName,
    String webUrl,
    String state,
    String description,
    List<String> labels,
    String changesCount,
    String sha,
  });
}

/// @nodoc
class __$$GitLabMergeRequestImplCopyWithImpl<$Res>
    extends _$GitLabMergeRequestCopyWithImpl<$Res, _$GitLabMergeRequestImpl>
    implements _$$GitLabMergeRequestImplCopyWith<$Res> {
  __$$GitLabMergeRequestImplCopyWithImpl(
    _$GitLabMergeRequestImpl _value,
    $Res Function(_$GitLabMergeRequestImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iid = null,
    Object? title = null,
    Object? sourceBranch = null,
    Object? targetBranch = null,
    Object? authorName = null,
    Object? webUrl = null,
    Object? state = null,
    Object? description = null,
    Object? labels = null,
    Object? changesCount = null,
    Object? sha = null,
  }) {
    return _then(
      _$GitLabMergeRequestImpl(
        iid: null == iid
            ? _value.iid
            : iid // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        sourceBranch: null == sourceBranch
            ? _value.sourceBranch
            : sourceBranch // ignore: cast_nullable_to_non_nullable
                  as String,
        targetBranch: null == targetBranch
            ? _value.targetBranch
            : targetBranch // ignore: cast_nullable_to_non_nullable
                  as String,
        authorName: null == authorName
            ? _value.authorName
            : authorName // ignore: cast_nullable_to_non_nullable
                  as String,
        webUrl: null == webUrl
            ? _value.webUrl
            : webUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        labels: null == labels
            ? _value._labels
            : labels // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        changesCount: null == changesCount
            ? _value.changesCount
            : changesCount // ignore: cast_nullable_to_non_nullable
                  as String,
        sha: null == sha
            ? _value.sha
            : sha // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GitLabMergeRequestImpl extends _GitLabMergeRequest {
  const _$GitLabMergeRequestImpl({
    required this.iid,
    required this.title,
    required this.sourceBranch,
    required this.targetBranch,
    @JsonKey(name: 'author', readValue: _readAuthorName)
    required this.authorName,
    required this.webUrl,
    required this.state,
    this.description = '',
    final List<String> labels = const <String>[],
    this.changesCount = '0',
    this.sha = '',
  }) : _labels = labels,
       super._();

  factory _$GitLabMergeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitLabMergeRequestImplFromJson(json);

  /// Internal ID of the MR within its project (the `!123` number on GitLab).
  @override
  final int iid;

  /// Title of the Merge Request.
  @override
  final String title;

  /// Source branch name (feature branch).
  @override
  final String sourceBranch;

  /// Target branch name (usually `develop` or `main`).
  @override
  final String targetBranch;

  /// Display name of the author on GitLab.
  @override
  @JsonKey(name: 'author', readValue: _readAuthorName)
  final String authorName;

  /// Full URL to open the MR in a browser.
  @override
  final String webUrl;

  /// Current state: `opened`, `closed`, `merged`, or `locked`.
  @override
  final String state;

  /// Description written by the author, may be empty.
  @override
  @JsonKey()
  final String description;

  /// Labels applied to this merge request.
  final List<String> _labels;

  /// Labels applied to this merge request.
  @override
  @JsonKey()
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  /// Number of changed files as reported by GitLab (e.g. "15").
  @override
  @JsonKey()
  final String changesCount;

  /// Head commit SHA of the source branch at the time of the API call.
  ///
  /// Used by the cron job to detect new commits and trigger re-reviews.
  @override
  @JsonKey()
  final String sha;

  @override
  String toString() {
    return 'GitLabMergeRequest(iid: $iid, title: $title, sourceBranch: $sourceBranch, targetBranch: $targetBranch, authorName: $authorName, webUrl: $webUrl, state: $state, description: $description, labels: $labels, changesCount: $changesCount, sha: $sha)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitLabMergeRequestImpl &&
            (identical(other.iid, iid) || other.iid == iid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sourceBranch, sourceBranch) ||
                other.sourceBranch == sourceBranch) &&
            (identical(other.targetBranch, targetBranch) ||
                other.targetBranch == targetBranch) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.webUrl, webUrl) || other.webUrl == webUrl) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            (identical(other.changesCount, changesCount) ||
                other.changesCount == changesCount) &&
            (identical(other.sha, sha) || other.sha == sha));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    iid,
    title,
    sourceBranch,
    targetBranch,
    authorName,
    webUrl,
    state,
    description,
    const DeepCollectionEquality().hash(_labels),
    changesCount,
    sha,
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitLabMergeRequestImplCopyWith<_$GitLabMergeRequestImpl> get copyWith =>
      __$$GitLabMergeRequestImplCopyWithImpl<_$GitLabMergeRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GitLabMergeRequestImplToJson(this);
  }
}

abstract class _GitLabMergeRequest extends GitLabMergeRequest {
  const factory _GitLabMergeRequest({
    required final int iid,
    required final String title,
    required final String sourceBranch,
    required final String targetBranch,
    @JsonKey(name: 'author', readValue: _readAuthorName)
    required final String authorName,
    required final String webUrl,
    required final String state,
    final String description,
    final List<String> labels,
    final String changesCount,
    final String sha,
  }) = _$GitLabMergeRequestImpl;
  const _GitLabMergeRequest._() : super._();

  factory _GitLabMergeRequest.fromJson(Map<String, dynamic> json) =
      _$GitLabMergeRequestImpl.fromJson;

  @override
  /// Internal ID of the MR within its project (the `!123` number on GitLab).
  int get iid;
  @override
  /// Title of the Merge Request.
  String get title;
  @override
  /// Source branch name (feature branch).
  String get sourceBranch;
  @override
  /// Target branch name (usually `develop` or `main`).
  String get targetBranch;
  @override
  /// Display name of the author on GitLab.
  @JsonKey(name: 'author', readValue: _readAuthorName)
  String get authorName;
  @override
  /// Full URL to open the MR in a browser.
  String get webUrl;
  @override
  /// Current state: `opened`, `closed`, `merged`, or `locked`.
  String get state;
  @override
  /// Description written by the author, may be empty.
  String get description;
  @override
  /// Labels applied to this merge request.
  List<String> get labels;
  @override
  /// Number of changed files as reported by GitLab (e.g. "15").
  String get changesCount;
  @override
  /// Head commit SHA of the source branch at the time of the API call.
  ///
  /// Used by the cron job to detect new commits and trigger re-reviews.
  String get sha;
  @override
  @JsonKey(ignore: true)
  _$$GitLabMergeRequestImplCopyWith<_$GitLabMergeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GitLabMrDiff _$GitLabMrDiffFromJson(Map<String, dynamic> json) {
  return _GitLabMrDiff.fromJson(json);
}

/// @nodoc
mixin _$GitLabMrDiff {
  /// File path after the change.
  String get newPath => throw _privateConstructorUsedError;

  /// File path before the change (differs from [newPath] on rename).
  String get oldPath => throw _privateConstructorUsedError;

  /// Unified diff content for this file.
  String get diff => throw _privateConstructorUsedError;

  /// `true` if the file was deleted in this MR.
  @JsonKey(name: 'deleted_file')
  bool get isDeleted => throw _privateConstructorUsedError;

  /// `true` if the file was renamed (move/rename).
  @JsonKey(name: 'renamed_file')
  bool get isRenamed => throw _privateConstructorUsedError;

  /// Whether this diff entry represents a newly created file.
  @JsonKey(name: 'new_file')
  bool get isNewFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitLabMrDiffCopyWith<GitLabMrDiff> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitLabMrDiffCopyWith<$Res> {
  factory $GitLabMrDiffCopyWith(
    GitLabMrDiff value,
    $Res Function(GitLabMrDiff) then,
  ) = _$GitLabMrDiffCopyWithImpl<$Res, GitLabMrDiff>;
  @useResult
  $Res call({
    String newPath,
    String oldPath,
    String diff,
    @JsonKey(name: 'deleted_file') bool isDeleted,
    @JsonKey(name: 'renamed_file') bool isRenamed,
    @JsonKey(name: 'new_file') bool isNewFile,
  });
}

/// @nodoc
class _$GitLabMrDiffCopyWithImpl<$Res, $Val extends GitLabMrDiff>
    implements $GitLabMrDiffCopyWith<$Res> {
  _$GitLabMrDiffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPath = null,
    Object? oldPath = null,
    Object? diff = null,
    Object? isDeleted = null,
    Object? isRenamed = null,
    Object? isNewFile = null,
  }) {
    return _then(
      _value.copyWith(
            newPath: null == newPath
                ? _value.newPath
                : newPath // ignore: cast_nullable_to_non_nullable
                      as String,
            oldPath: null == oldPath
                ? _value.oldPath
                : oldPath // ignore: cast_nullable_to_non_nullable
                      as String,
            diff: null == diff
                ? _value.diff
                : diff // ignore: cast_nullable_to_non_nullable
                      as String,
            isDeleted: null == isDeleted
                ? _value.isDeleted
                : isDeleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            isRenamed: null == isRenamed
                ? _value.isRenamed
                : isRenamed // ignore: cast_nullable_to_non_nullable
                      as bool,
            isNewFile: null == isNewFile
                ? _value.isNewFile
                : isNewFile // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GitLabMrDiffImplCopyWith<$Res>
    implements $GitLabMrDiffCopyWith<$Res> {
  factory _$$GitLabMrDiffImplCopyWith(
    _$GitLabMrDiffImpl value,
    $Res Function(_$GitLabMrDiffImpl) then,
  ) = __$$GitLabMrDiffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String newPath,
    String oldPath,
    String diff,
    @JsonKey(name: 'deleted_file') bool isDeleted,
    @JsonKey(name: 'renamed_file') bool isRenamed,
    @JsonKey(name: 'new_file') bool isNewFile,
  });
}

/// @nodoc
class __$$GitLabMrDiffImplCopyWithImpl<$Res>
    extends _$GitLabMrDiffCopyWithImpl<$Res, _$GitLabMrDiffImpl>
    implements _$$GitLabMrDiffImplCopyWith<$Res> {
  __$$GitLabMrDiffImplCopyWithImpl(
    _$GitLabMrDiffImpl _value,
    $Res Function(_$GitLabMrDiffImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPath = null,
    Object? oldPath = null,
    Object? diff = null,
    Object? isDeleted = null,
    Object? isRenamed = null,
    Object? isNewFile = null,
  }) {
    return _then(
      _$GitLabMrDiffImpl(
        newPath: null == newPath
            ? _value.newPath
            : newPath // ignore: cast_nullable_to_non_nullable
                  as String,
        oldPath: null == oldPath
            ? _value.oldPath
            : oldPath // ignore: cast_nullable_to_non_nullable
                  as String,
        diff: null == diff
            ? _value.diff
            : diff // ignore: cast_nullable_to_non_nullable
                  as String,
        isDeleted: null == isDeleted
            ? _value.isDeleted
            : isDeleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        isRenamed: null == isRenamed
            ? _value.isRenamed
            : isRenamed // ignore: cast_nullable_to_non_nullable
                  as bool,
        isNewFile: null == isNewFile
            ? _value.isNewFile
            : isNewFile // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GitLabMrDiffImpl implements _GitLabMrDiff {
  const _$GitLabMrDiffImpl({
    required this.newPath,
    required this.oldPath,
    this.diff = '',
    @JsonKey(name: 'deleted_file') this.isDeleted = false,
    @JsonKey(name: 'renamed_file') this.isRenamed = false,
    @JsonKey(name: 'new_file') this.isNewFile = false,
  });

  factory _$GitLabMrDiffImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitLabMrDiffImplFromJson(json);

  /// File path after the change.
  @override
  final String newPath;

  /// File path before the change (differs from [newPath] on rename).
  @override
  final String oldPath;

  /// Unified diff content for this file.
  @override
  @JsonKey()
  final String diff;

  /// `true` if the file was deleted in this MR.
  @override
  @JsonKey(name: 'deleted_file')
  final bool isDeleted;

  /// `true` if the file was renamed (move/rename).
  @override
  @JsonKey(name: 'renamed_file')
  final bool isRenamed;

  /// Whether this diff entry represents a newly created file.
  @override
  @JsonKey(name: 'new_file')
  final bool isNewFile;

  @override
  String toString() {
    return 'GitLabMrDiff(newPath: $newPath, oldPath: $oldPath, diff: $diff, isDeleted: $isDeleted, isRenamed: $isRenamed, isNewFile: $isNewFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitLabMrDiffImpl &&
            (identical(other.newPath, newPath) || other.newPath == newPath) &&
            (identical(other.oldPath, oldPath) || other.oldPath == oldPath) &&
            (identical(other.diff, diff) || other.diff == diff) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isRenamed, isRenamed) ||
                other.isRenamed == isRenamed) &&
            (identical(other.isNewFile, isNewFile) ||
                other.isNewFile == isNewFile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    newPath,
    oldPath,
    diff,
    isDeleted,
    isRenamed,
    isNewFile,
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitLabMrDiffImplCopyWith<_$GitLabMrDiffImpl> get copyWith =>
      __$$GitLabMrDiffImplCopyWithImpl<_$GitLabMrDiffImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitLabMrDiffImplToJson(this);
  }
}

abstract class _GitLabMrDiff implements GitLabMrDiff {
  const factory _GitLabMrDiff({
    required final String newPath,
    required final String oldPath,
    final String diff,
    @JsonKey(name: 'deleted_file') final bool isDeleted,
    @JsonKey(name: 'renamed_file') final bool isRenamed,
    @JsonKey(name: 'new_file') final bool isNewFile,
  }) = _$GitLabMrDiffImpl;

  factory _GitLabMrDiff.fromJson(Map<String, dynamic> json) =
      _$GitLabMrDiffImpl.fromJson;

  @override
  /// File path after the change.
  String get newPath;
  @override
  /// File path before the change (differs from [newPath] on rename).
  String get oldPath;
  @override
  /// Unified diff content for this file.
  String get diff;
  @override
  /// `true` if the file was deleted in this MR.
  @JsonKey(name: 'deleted_file')
  bool get isDeleted;
  @override
  /// `true` if the file was renamed (move/rename).
  @JsonKey(name: 'renamed_file')
  bool get isRenamed;
  @override
  /// Whether this diff entry represents a newly created file.
  @JsonKey(name: 'new_file')
  bool get isNewFile;
  @override
  @JsonKey(ignore: true)
  _$$GitLabMrDiffImplCopyWith<_$GitLabMrDiffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
