// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestartParams _$RestartParamsFromJson(Map<String, dynamic> json) {
  return _RestartParams.fromJson(json);
}

/// @nodoc
mixin _$RestartParams {
  /// Wait until no build is running or queued, instead of interrupting one.
  bool get whenIdle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestartParamsCopyWith<RestartParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestartParamsCopyWith<$Res> {
  factory $RestartParamsCopyWith(
          RestartParams value, $Res Function(RestartParams) then) =
      _$RestartParamsCopyWithImpl<$Res, RestartParams>;
  @useResult
  $Res call({bool whenIdle});
}

/// @nodoc
class _$RestartParamsCopyWithImpl<$Res, $Val extends RestartParams>
    implements $RestartParamsCopyWith<$Res> {
  _$RestartParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whenIdle = null,
  }) {
    return _then(_value.copyWith(
      whenIdle: null == whenIdle
          ? _value.whenIdle
          : whenIdle // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestartParamsImplCopyWith<$Res>
    implements $RestartParamsCopyWith<$Res> {
  factory _$$RestartParamsImplCopyWith(
          _$RestartParamsImpl value, $Res Function(_$RestartParamsImpl) then) =
      __$$RestartParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool whenIdle});
}

/// @nodoc
class __$$RestartParamsImplCopyWithImpl<$Res>
    extends _$RestartParamsCopyWithImpl<$Res, _$RestartParamsImpl>
    implements _$$RestartParamsImplCopyWith<$Res> {
  __$$RestartParamsImplCopyWithImpl(
      _$RestartParamsImpl _value, $Res Function(_$RestartParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whenIdle = null,
  }) {
    return _then(_$RestartParamsImpl(
      whenIdle: null == whenIdle
          ? _value.whenIdle
          : whenIdle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestartParamsImpl implements _RestartParams {
  const _$RestartParamsImpl({this.whenIdle = false});

  factory _$RestartParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestartParamsImplFromJson(json);

  /// Wait until no build is running or queued, instead of interrupting one.
  @override
  @JsonKey()
  final bool whenIdle;

  @override
  String toString() {
    return 'RestartParams(whenIdle: $whenIdle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestartParamsImpl &&
            (identical(other.whenIdle, whenIdle) ||
                other.whenIdle == whenIdle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, whenIdle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestartParamsImplCopyWith<_$RestartParamsImpl> get copyWith =>
      __$$RestartParamsImplCopyWithImpl<_$RestartParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestartParamsImplToJson(
      this,
    );
  }
}

abstract class _RestartParams implements RestartParams {
  const factory _RestartParams({final bool whenIdle}) = _$RestartParamsImpl;

  factory _RestartParams.fromJson(Map<String, dynamic> json) =
      _$RestartParamsImpl.fromJson;

  @override

  /// Wait until no build is running or queued, instead of interrupting one.
  bool get whenIdle;
  @override
  @JsonKey(ignore: true)
  _$$RestartParamsImplCopyWith<_$RestartParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HiveBoxCleanParams _$HiveBoxCleanParamsFromJson(Map<String, dynamic> json) {
  return _HiveBoxCleanParams.fromJson(json);
}

/// @nodoc
mixin _$HiveBoxCleanParams {
  /// Exact box name from `system.hive.list`.
  String get box => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HiveBoxCleanParamsCopyWith<HiveBoxCleanParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiveBoxCleanParamsCopyWith<$Res> {
  factory $HiveBoxCleanParamsCopyWith(
          HiveBoxCleanParams value, $Res Function(HiveBoxCleanParams) then) =
      _$HiveBoxCleanParamsCopyWithImpl<$Res, HiveBoxCleanParams>;
  @useResult
  $Res call({String box});
}

/// @nodoc
class _$HiveBoxCleanParamsCopyWithImpl<$Res, $Val extends HiveBoxCleanParams>
    implements $HiveBoxCleanParamsCopyWith<$Res> {
  _$HiveBoxCleanParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? box = null,
  }) {
    return _then(_value.copyWith(
      box: null == box
          ? _value.box
          : box // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HiveBoxCleanParamsImplCopyWith<$Res>
    implements $HiveBoxCleanParamsCopyWith<$Res> {
  factory _$$HiveBoxCleanParamsImplCopyWith(_$HiveBoxCleanParamsImpl value,
          $Res Function(_$HiveBoxCleanParamsImpl) then) =
      __$$HiveBoxCleanParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String box});
}

/// @nodoc
class __$$HiveBoxCleanParamsImplCopyWithImpl<$Res>
    extends _$HiveBoxCleanParamsCopyWithImpl<$Res, _$HiveBoxCleanParamsImpl>
    implements _$$HiveBoxCleanParamsImplCopyWith<$Res> {
  __$$HiveBoxCleanParamsImplCopyWithImpl(_$HiveBoxCleanParamsImpl _value,
      $Res Function(_$HiveBoxCleanParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? box = null,
  }) {
    return _then(_$HiveBoxCleanParamsImpl(
      box: null == box
          ? _value.box
          : box // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HiveBoxCleanParamsImpl implements _HiveBoxCleanParams {
  const _$HiveBoxCleanParamsImpl({required this.box});

  factory _$HiveBoxCleanParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HiveBoxCleanParamsImplFromJson(json);

  /// Exact box name from `system.hive.list`.
  @override
  final String box;

  @override
  String toString() {
    return 'HiveBoxCleanParams(box: $box)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HiveBoxCleanParamsImpl &&
            (identical(other.box, box) || other.box == box));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, box);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HiveBoxCleanParamsImplCopyWith<_$HiveBoxCleanParamsImpl> get copyWith =>
      __$$HiveBoxCleanParamsImplCopyWithImpl<_$HiveBoxCleanParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HiveBoxCleanParamsImplToJson(
      this,
    );
  }
}

abstract class _HiveBoxCleanParams implements HiveBoxCleanParams {
  const factory _HiveBoxCleanParams({required final String box}) =
      _$HiveBoxCleanParamsImpl;

  factory _HiveBoxCleanParams.fromJson(Map<String, dynamic> json) =
      _$HiveBoxCleanParamsImpl.fromJson;

  @override

  /// Exact box name from `system.hive.list`.
  String get box;
  @override
  @JsonKey(ignore: true)
  _$$HiveBoxCleanParamsImplCopyWith<_$HiveBoxCleanParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CronRunParams _$CronRunParamsFromJson(Map<String, dynamic> json) {
  return _CronRunParams.fromJson(json);
}

/// @nodoc
mixin _$CronRunParams {
  String get job => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CronRunParamsCopyWith<CronRunParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CronRunParamsCopyWith<$Res> {
  factory $CronRunParamsCopyWith(
          CronRunParams value, $Res Function(CronRunParams) then) =
      _$CronRunParamsCopyWithImpl<$Res, CronRunParams>;
  @useResult
  $Res call({String job});
}

/// @nodoc
class _$CronRunParamsCopyWithImpl<$Res, $Val extends CronRunParams>
    implements $CronRunParamsCopyWith<$Res> {
  _$CronRunParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? job = null,
  }) {
    return _then(_value.copyWith(
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CronRunParamsImplCopyWith<$Res>
    implements $CronRunParamsCopyWith<$Res> {
  factory _$$CronRunParamsImplCopyWith(
          _$CronRunParamsImpl value, $Res Function(_$CronRunParamsImpl) then) =
      __$$CronRunParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String job});
}

/// @nodoc
class __$$CronRunParamsImplCopyWithImpl<$Res>
    extends _$CronRunParamsCopyWithImpl<$Res, _$CronRunParamsImpl>
    implements _$$CronRunParamsImplCopyWith<$Res> {
  __$$CronRunParamsImplCopyWithImpl(
      _$CronRunParamsImpl _value, $Res Function(_$CronRunParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? job = null,
  }) {
    return _then(_$CronRunParamsImpl(
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CronRunParamsImpl implements _CronRunParams {
  const _$CronRunParamsImpl({required this.job});

  factory _$CronRunParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CronRunParamsImplFromJson(json);

  @override
  final String job;

  @override
  String toString() {
    return 'CronRunParams(job: $job)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CronRunParamsImpl &&
            (identical(other.job, job) || other.job == job));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, job);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CronRunParamsImplCopyWith<_$CronRunParamsImpl> get copyWith =>
      __$$CronRunParamsImplCopyWithImpl<_$CronRunParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CronRunParamsImplToJson(
      this,
    );
  }
}

abstract class _CronRunParams implements CronRunParams {
  const factory _CronRunParams({required final String job}) =
      _$CronRunParamsImpl;

  factory _CronRunParams.fromJson(Map<String, dynamic> json) =
      _$CronRunParamsImpl.fromJson;

  @override
  String get job;
  @override
  @JsonKey(ignore: true)
  _$$CronRunParamsImplCopyWith<_$CronRunParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

P2pFilesDeleteParams _$P2pFilesDeleteParamsFromJson(Map<String, dynamic> json) {
  return _P2pFilesDeleteParams.fromJson(json);
}

/// @nodoc
mixin _$P2pFilesDeleteParams {
  String get filename => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $P2pFilesDeleteParamsCopyWith<P2pFilesDeleteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $P2pFilesDeleteParamsCopyWith<$Res> {
  factory $P2pFilesDeleteParamsCopyWith(P2pFilesDeleteParams value,
          $Res Function(P2pFilesDeleteParams) then) =
      _$P2pFilesDeleteParamsCopyWithImpl<$Res, P2pFilesDeleteParams>;
  @useResult
  $Res call({String filename});
}

/// @nodoc
class _$P2pFilesDeleteParamsCopyWithImpl<$Res,
        $Val extends P2pFilesDeleteParams>
    implements $P2pFilesDeleteParamsCopyWith<$Res> {
  _$P2pFilesDeleteParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
  }) {
    return _then(_value.copyWith(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$P2pFilesDeleteParamsImplCopyWith<$Res>
    implements $P2pFilesDeleteParamsCopyWith<$Res> {
  factory _$$P2pFilesDeleteParamsImplCopyWith(_$P2pFilesDeleteParamsImpl value,
          $Res Function(_$P2pFilesDeleteParamsImpl) then) =
      __$$P2pFilesDeleteParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filename});
}

/// @nodoc
class __$$P2pFilesDeleteParamsImplCopyWithImpl<$Res>
    extends _$P2pFilesDeleteParamsCopyWithImpl<$Res, _$P2pFilesDeleteParamsImpl>
    implements _$$P2pFilesDeleteParamsImplCopyWith<$Res> {
  __$$P2pFilesDeleteParamsImplCopyWithImpl(_$P2pFilesDeleteParamsImpl _value,
      $Res Function(_$P2pFilesDeleteParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
  }) {
    return _then(_$P2pFilesDeleteParamsImpl(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$P2pFilesDeleteParamsImpl implements _P2pFilesDeleteParams {
  const _$P2pFilesDeleteParamsImpl({required this.filename});

  factory _$P2pFilesDeleteParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$P2pFilesDeleteParamsImplFromJson(json);

  @override
  final String filename;

  @override
  String toString() {
    return 'P2pFilesDeleteParams(filename: $filename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$P2pFilesDeleteParamsImpl &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, filename);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$P2pFilesDeleteParamsImplCopyWith<_$P2pFilesDeleteParamsImpl>
      get copyWith =>
          __$$P2pFilesDeleteParamsImplCopyWithImpl<_$P2pFilesDeleteParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$P2pFilesDeleteParamsImplToJson(
      this,
    );
  }
}

abstract class _P2pFilesDeleteParams implements P2pFilesDeleteParams {
  const factory _P2pFilesDeleteParams({required final String filename}) =
      _$P2pFilesDeleteParamsImpl;

  factory _P2pFilesDeleteParams.fromJson(Map<String, dynamic> json) =
      _$P2pFilesDeleteParamsImpl.fromJson;

  @override
  String get filename;
  @override
  @JsonKey(ignore: true)
  _$$P2pFilesDeleteParamsImplCopyWith<_$P2pFilesDeleteParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
