// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gitlab_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GitlabReviewParams _$GitlabReviewParamsFromJson(Map<String, dynamic> json) {
  return _GitlabReviewParams.fromJson(json);
}

/// @nodoc
mixin _$GitlabReviewParams {
  @GitLabMrUrlConverter()
  GitLabMrUrl get url => throw _privateConstructorUsedError;
  AiModel get model => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitlabReviewParamsCopyWith<GitlabReviewParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitlabReviewParamsCopyWith<$Res> {
  factory $GitlabReviewParamsCopyWith(
          GitlabReviewParams value, $Res Function(GitlabReviewParams) then) =
      _$GitlabReviewParamsCopyWithImpl<$Res, GitlabReviewParams>;
  @useResult
  $Res call({@GitLabMrUrlConverter() GitLabMrUrl url, AiModel model});

  $GitLabMrUrlCopyWith<$Res> get url;
}

/// @nodoc
class _$GitlabReviewParamsCopyWithImpl<$Res, $Val extends GitlabReviewParams>
    implements $GitlabReviewParamsCopyWith<$Res> {
  _$GitlabReviewParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as GitLabMrUrl,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AiModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GitLabMrUrlCopyWith<$Res> get url {
    return $GitLabMrUrlCopyWith<$Res>(_value.url, (value) {
      return _then(_value.copyWith(url: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GitlabReviewParamsImplCopyWith<$Res>
    implements $GitlabReviewParamsCopyWith<$Res> {
  factory _$$GitlabReviewParamsImplCopyWith(_$GitlabReviewParamsImpl value,
          $Res Function(_$GitlabReviewParamsImpl) then) =
      __$$GitlabReviewParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@GitLabMrUrlConverter() GitLabMrUrl url, AiModel model});

  @override
  $GitLabMrUrlCopyWith<$Res> get url;
}

/// @nodoc
class __$$GitlabReviewParamsImplCopyWithImpl<$Res>
    extends _$GitlabReviewParamsCopyWithImpl<$Res, _$GitlabReviewParamsImpl>
    implements _$$GitlabReviewParamsImplCopyWith<$Res> {
  __$$GitlabReviewParamsImplCopyWithImpl(_$GitlabReviewParamsImpl _value,
      $Res Function(_$GitlabReviewParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? model = null,
  }) {
    return _then(_$GitlabReviewParamsImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as GitLabMrUrl,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AiModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitlabReviewParamsImpl implements _GitlabReviewParams {
  const _$GitlabReviewParamsImpl(
      {@GitLabMrUrlConverter() required this.url,
      this.model = AiModel.flash36});

  factory _$GitlabReviewParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitlabReviewParamsImplFromJson(json);

  @override
  @GitLabMrUrlConverter()
  final GitLabMrUrl url;
  @override
  @JsonKey()
  final AiModel model;

  @override
  String toString() {
    return 'GitlabReviewParams(url: $url, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitlabReviewParamsImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitlabReviewParamsImplCopyWith<_$GitlabReviewParamsImpl> get copyWith =>
      __$$GitlabReviewParamsImplCopyWithImpl<_$GitlabReviewParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitlabReviewParamsImplToJson(
      this,
    );
  }
}

abstract class _GitlabReviewParams implements GitlabReviewParams {
  const factory _GitlabReviewParams(
      {@GitLabMrUrlConverter() required final GitLabMrUrl url,
      final AiModel model}) = _$GitlabReviewParamsImpl;

  factory _GitlabReviewParams.fromJson(Map<String, dynamic> json) =
      _$GitlabReviewParamsImpl.fromJson;

  @override
  @GitLabMrUrlConverter()
  GitLabMrUrl get url;
  @override
  AiModel get model;
  @override
  @JsonKey(ignore: true)
  _$$GitlabReviewParamsImplCopyWith<_$GitlabReviewParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GitlabTranslateArbParams _$GitlabTranslateArbParamsFromJson(
    Map<String, dynamic> json) {
  return _GitlabTranslateArbParams.fromJson(json);
}

/// @nodoc
mixin _$GitlabTranslateArbParams {
  @TbchatModuleConverter()
  TbchatModule get module => throw _privateConstructorUsedError;

  /// Branch to read the current `.arb` files from and open the MR into.
  String get targetBranch => throw _privateConstructorUsedError;
  AiModel get model => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitlabTranslateArbParamsCopyWith<GitlabTranslateArbParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitlabTranslateArbParamsCopyWith<$Res> {
  factory $GitlabTranslateArbParamsCopyWith(GitlabTranslateArbParams value,
          $Res Function(GitlabTranslateArbParams) then) =
      _$GitlabTranslateArbParamsCopyWithImpl<$Res, GitlabTranslateArbParams>;
  @useResult
  $Res call(
      {@TbchatModuleConverter() TbchatModule module,
      String targetBranch,
      AiModel model});
}

/// @nodoc
class _$GitlabTranslateArbParamsCopyWithImpl<$Res,
        $Val extends GitlabTranslateArbParams>
    implements $GitlabTranslateArbParamsCopyWith<$Res> {
  _$GitlabTranslateArbParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? module = null,
    Object? targetBranch = null,
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      module: null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as TbchatModule,
      targetBranch: null == targetBranch
          ? _value.targetBranch
          : targetBranch // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AiModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitlabTranslateArbParamsImplCopyWith<$Res>
    implements $GitlabTranslateArbParamsCopyWith<$Res> {
  factory _$$GitlabTranslateArbParamsImplCopyWith(
          _$GitlabTranslateArbParamsImpl value,
          $Res Function(_$GitlabTranslateArbParamsImpl) then) =
      __$$GitlabTranslateArbParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TbchatModuleConverter() TbchatModule module,
      String targetBranch,
      AiModel model});
}

/// @nodoc
class __$$GitlabTranslateArbParamsImplCopyWithImpl<$Res>
    extends _$GitlabTranslateArbParamsCopyWithImpl<$Res,
        _$GitlabTranslateArbParamsImpl>
    implements _$$GitlabTranslateArbParamsImplCopyWith<$Res> {
  __$$GitlabTranslateArbParamsImplCopyWithImpl(
      _$GitlabTranslateArbParamsImpl _value,
      $Res Function(_$GitlabTranslateArbParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? module = null,
    Object? targetBranch = null,
    Object? model = null,
  }) {
    return _then(_$GitlabTranslateArbParamsImpl(
      module: null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as TbchatModule,
      targetBranch: null == targetBranch
          ? _value.targetBranch
          : targetBranch // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AiModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitlabTranslateArbParamsImpl implements _GitlabTranslateArbParams {
  const _$GitlabTranslateArbParamsImpl(
      {@TbchatModuleConverter() required this.module,
      required this.targetBranch,
      this.model = AiModel.flash36});

  factory _$GitlabTranslateArbParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitlabTranslateArbParamsImplFromJson(json);

  @override
  @TbchatModuleConverter()
  final TbchatModule module;

  /// Branch to read the current `.arb` files from and open the MR into.
  @override
  final String targetBranch;
  @override
  @JsonKey()
  final AiModel model;

  @override
  String toString() {
    return 'GitlabTranslateArbParams(module: $module, targetBranch: $targetBranch, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitlabTranslateArbParamsImpl &&
            (identical(other.module, module) || other.module == module) &&
            (identical(other.targetBranch, targetBranch) ||
                other.targetBranch == targetBranch) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, module, targetBranch, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitlabTranslateArbParamsImplCopyWith<_$GitlabTranslateArbParamsImpl>
      get copyWith => __$$GitlabTranslateArbParamsImplCopyWithImpl<
          _$GitlabTranslateArbParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitlabTranslateArbParamsImplToJson(
      this,
    );
  }
}

abstract class _GitlabTranslateArbParams implements GitlabTranslateArbParams {
  const factory _GitlabTranslateArbParams(
      {@TbchatModuleConverter() required final TbchatModule module,
      required final String targetBranch,
      final AiModel model}) = _$GitlabTranslateArbParamsImpl;

  factory _GitlabTranslateArbParams.fromJson(Map<String, dynamic> json) =
      _$GitlabTranslateArbParamsImpl.fromJson;

  @override
  @TbchatModuleConverter()
  TbchatModule get module;
  @override

  /// Branch to read the current `.arb` files from and open the MR into.
  String get targetBranch;
  @override
  AiModel get model;
  @override
  @JsonKey(ignore: true)
  _$$GitlabTranslateArbParamsImplCopyWith<_$GitlabTranslateArbParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HistoryListParams _$HistoryListParamsFromJson(Map<String, dynamic> json) {
  return _HistoryListParams.fromJson(json);
}

/// @nodoc
mixin _$HistoryListParams {
  /// The server defaults to 20 and caps at 100.
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryListParamsCopyWith<HistoryListParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryListParamsCopyWith<$Res> {
  factory $HistoryListParamsCopyWith(
          HistoryListParams value, $Res Function(HistoryListParams) then) =
      _$HistoryListParamsCopyWithImpl<$Res, HistoryListParams>;
  @useResult
  $Res call({int? limit});
}

/// @nodoc
class _$HistoryListParamsCopyWithImpl<$Res, $Val extends HistoryListParams>
    implements $HistoryListParamsCopyWith<$Res> {
  _$HistoryListParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryListParamsImplCopyWith<$Res>
    implements $HistoryListParamsCopyWith<$Res> {
  factory _$$HistoryListParamsImplCopyWith(_$HistoryListParamsImpl value,
          $Res Function(_$HistoryListParamsImpl) then) =
      __$$HistoryListParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? limit});
}

/// @nodoc
class __$$HistoryListParamsImplCopyWithImpl<$Res>
    extends _$HistoryListParamsCopyWithImpl<$Res, _$HistoryListParamsImpl>
    implements _$$HistoryListParamsImplCopyWith<$Res> {
  __$$HistoryListParamsImplCopyWithImpl(_$HistoryListParamsImpl _value,
      $Res Function(_$HistoryListParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
  }) {
    return _then(_$HistoryListParamsImpl(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryListParamsImpl implements _HistoryListParams {
  const _$HistoryListParamsImpl({this.limit});

  factory _$HistoryListParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryListParamsImplFromJson(json);

  /// The server defaults to 20 and caps at 100.
  @override
  final int? limit;

  @override
  String toString() {
    return 'HistoryListParams(limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryListParamsImpl &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryListParamsImplCopyWith<_$HistoryListParamsImpl> get copyWith =>
      __$$HistoryListParamsImplCopyWithImpl<_$HistoryListParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryListParamsImplToJson(
      this,
    );
  }
}

abstract class _HistoryListParams implements HistoryListParams {
  const factory _HistoryListParams({final int? limit}) =
      _$HistoryListParamsImpl;

  factory _HistoryListParams.fromJson(Map<String, dynamic> json) =
      _$HistoryListParamsImpl.fromJson;

  @override

  /// The server defaults to 20 and caps at 100.
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$HistoryListParamsImplCopyWith<_$HistoryListParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HistoryDeleteParams _$HistoryDeleteParamsFromJson(Map<String, dynamic> json) {
  return _HistoryDeleteParams.fromJson(json);
}

/// @nodoc
mixin _$HistoryDeleteParams {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryDeleteParamsCopyWith<HistoryDeleteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryDeleteParamsCopyWith<$Res> {
  factory $HistoryDeleteParamsCopyWith(
          HistoryDeleteParams value, $Res Function(HistoryDeleteParams) then) =
      _$HistoryDeleteParamsCopyWithImpl<$Res, HistoryDeleteParams>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$HistoryDeleteParamsCopyWithImpl<$Res, $Val extends HistoryDeleteParams>
    implements $HistoryDeleteParamsCopyWith<$Res> {
  _$HistoryDeleteParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryDeleteParamsImplCopyWith<$Res>
    implements $HistoryDeleteParamsCopyWith<$Res> {
  factory _$$HistoryDeleteParamsImplCopyWith(_$HistoryDeleteParamsImpl value,
          $Res Function(_$HistoryDeleteParamsImpl) then) =
      __$$HistoryDeleteParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$HistoryDeleteParamsImplCopyWithImpl<$Res>
    extends _$HistoryDeleteParamsCopyWithImpl<$Res, _$HistoryDeleteParamsImpl>
    implements _$$HistoryDeleteParamsImplCopyWith<$Res> {
  __$$HistoryDeleteParamsImplCopyWithImpl(_$HistoryDeleteParamsImpl _value,
      $Res Function(_$HistoryDeleteParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$HistoryDeleteParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryDeleteParamsImpl implements _HistoryDeleteParams {
  const _$HistoryDeleteParamsImpl({required this.id});

  factory _$HistoryDeleteParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryDeleteParamsImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'HistoryDeleteParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryDeleteParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryDeleteParamsImplCopyWith<_$HistoryDeleteParamsImpl> get copyWith =>
      __$$HistoryDeleteParamsImplCopyWithImpl<_$HistoryDeleteParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryDeleteParamsImplToJson(
      this,
    );
  }
}

abstract class _HistoryDeleteParams implements HistoryDeleteParams {
  const factory _HistoryDeleteParams({required final String id}) =
      _$HistoryDeleteParamsImpl;

  factory _HistoryDeleteParams.fromJson(Map<String, dynamic> json) =
      _$HistoryDeleteParamsImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$HistoryDeleteParamsImplCopyWith<_$HistoryDeleteParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
