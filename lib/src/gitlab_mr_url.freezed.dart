// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gitlab_mr_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GitLabMrUrl _$GitLabMrUrlFromJson(Map<String, dynamic> json) {
  return _GitLabMrUrl.fromJson(json);
}

/// @nodoc
mixin _$GitLabMrUrl {
  /// The `namespace/project` path (e.g. `root/tbchat_socialfi`).
  String get projectPath => throw _privateConstructorUsedError;

  /// Internal ID of the merge request (the `!123` number).
  int get mrIid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitLabMrUrlCopyWith<GitLabMrUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitLabMrUrlCopyWith<$Res> {
  factory $GitLabMrUrlCopyWith(
    GitLabMrUrl value,
    $Res Function(GitLabMrUrl) then,
  ) = _$GitLabMrUrlCopyWithImpl<$Res, GitLabMrUrl>;
  @useResult
  $Res call({String projectPath, int mrIid});
}

/// @nodoc
class _$GitLabMrUrlCopyWithImpl<$Res, $Val extends GitLabMrUrl>
    implements $GitLabMrUrlCopyWith<$Res> {
  _$GitLabMrUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? projectPath = null, Object? mrIid = null}) {
    return _then(
      _value.copyWith(
            projectPath: null == projectPath
                ? _value.projectPath
                : projectPath // ignore: cast_nullable_to_non_nullable
                      as String,
            mrIid: null == mrIid
                ? _value.mrIid
                : mrIid // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GitLabMrUrlImplCopyWith<$Res>
    implements $GitLabMrUrlCopyWith<$Res> {
  factory _$$GitLabMrUrlImplCopyWith(
    _$GitLabMrUrlImpl value,
    $Res Function(_$GitLabMrUrlImpl) then,
  ) = __$$GitLabMrUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String projectPath, int mrIid});
}

/// @nodoc
class __$$GitLabMrUrlImplCopyWithImpl<$Res>
    extends _$GitLabMrUrlCopyWithImpl<$Res, _$GitLabMrUrlImpl>
    implements _$$GitLabMrUrlImplCopyWith<$Res> {
  __$$GitLabMrUrlImplCopyWithImpl(
    _$GitLabMrUrlImpl _value,
    $Res Function(_$GitLabMrUrlImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? projectPath = null, Object? mrIid = null}) {
    return _then(
      _$GitLabMrUrlImpl(
        projectPath: null == projectPath
            ? _value.projectPath
            : projectPath // ignore: cast_nullable_to_non_nullable
                  as String,
        mrIid: null == mrIid
            ? _value.mrIid
            : mrIid // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GitLabMrUrlImpl extends _GitLabMrUrl {
  const _$GitLabMrUrlImpl({required this.projectPath, required this.mrIid})
    : super._();

  factory _$GitLabMrUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitLabMrUrlImplFromJson(json);

  /// The `namespace/project` path (e.g. `root/tbchat_socialfi`).
  @override
  final String projectPath;

  /// Internal ID of the merge request (the `!123` number).
  @override
  final int mrIid;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitLabMrUrlImpl &&
            (identical(other.projectPath, projectPath) ||
                other.projectPath == projectPath) &&
            (identical(other.mrIid, mrIid) || other.mrIid == mrIid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, projectPath, mrIid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitLabMrUrlImplCopyWith<_$GitLabMrUrlImpl> get copyWith =>
      __$$GitLabMrUrlImplCopyWithImpl<_$GitLabMrUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitLabMrUrlImplToJson(this);
  }
}

abstract class _GitLabMrUrl extends GitLabMrUrl {
  const factory _GitLabMrUrl({
    required final String projectPath,
    required final int mrIid,
  }) = _$GitLabMrUrlImpl;
  const _GitLabMrUrl._() : super._();

  factory _GitLabMrUrl.fromJson(Map<String, dynamic> json) =
      _$GitLabMrUrlImpl.fromJson;

  @override
  /// The `namespace/project` path (e.g. `root/tbchat_socialfi`).
  String get projectPath;
  @override
  /// Internal ID of the merge request (the `!123` number).
  int get mrIid;
  @override
  @JsonKey(ignore: true)
  _$$GitLabMrUrlImplCopyWith<_$GitLabMrUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
