// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zentao_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ZentaoReportStartParams _$ZentaoReportStartParamsFromJson(
    Map<String, dynamic> json) {
  return _ZentaoReportStartParams.fromJson(json);
}

/// @nodoc
mixin _$ZentaoReportStartParams {
  /// Markdown; empty starts a report with no text yet.
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZentaoReportStartParamsCopyWith<ZentaoReportStartParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZentaoReportStartParamsCopyWith<$Res> {
  factory $ZentaoReportStartParamsCopyWith(ZentaoReportStartParams value,
          $Res Function(ZentaoReportStartParams) then) =
      _$ZentaoReportStartParamsCopyWithImpl<$Res, ZentaoReportStartParams>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$ZentaoReportStartParamsCopyWithImpl<$Res,
        $Val extends ZentaoReportStartParams>
    implements $ZentaoReportStartParamsCopyWith<$Res> {
  _$ZentaoReportStartParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZentaoReportStartParamsImplCopyWith<$Res>
    implements $ZentaoReportStartParamsCopyWith<$Res> {
  factory _$$ZentaoReportStartParamsImplCopyWith(
          _$ZentaoReportStartParamsImpl value,
          $Res Function(_$ZentaoReportStartParamsImpl) then) =
      __$$ZentaoReportStartParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$ZentaoReportStartParamsImplCopyWithImpl<$Res>
    extends _$ZentaoReportStartParamsCopyWithImpl<$Res,
        _$ZentaoReportStartParamsImpl>
    implements _$$ZentaoReportStartParamsImplCopyWith<$Res> {
  __$$ZentaoReportStartParamsImplCopyWithImpl(
      _$ZentaoReportStartParamsImpl _value,
      $Res Function(_$ZentaoReportStartParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$ZentaoReportStartParamsImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZentaoReportStartParamsImpl implements _ZentaoReportStartParams {
  const _$ZentaoReportStartParamsImpl({this.description = ''});

  factory _$ZentaoReportStartParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZentaoReportStartParamsImplFromJson(json);

  /// Markdown; empty starts a report with no text yet.
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'ZentaoReportStartParams(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZentaoReportStartParamsImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZentaoReportStartParamsImplCopyWith<_$ZentaoReportStartParamsImpl>
      get copyWith => __$$ZentaoReportStartParamsImplCopyWithImpl<
          _$ZentaoReportStartParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZentaoReportStartParamsImplToJson(
      this,
    );
  }
}

abstract class _ZentaoReportStartParams implements ZentaoReportStartParams {
  const factory _ZentaoReportStartParams({final String description}) =
      _$ZentaoReportStartParamsImpl;

  factory _ZentaoReportStartParams.fromJson(Map<String, dynamic> json) =
      _$ZentaoReportStartParamsImpl.fromJson;

  @override

  /// Markdown; empty starts a report with no text yet.
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ZentaoReportStartParamsImplCopyWith<_$ZentaoReportStartParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ZentaoReportEditParams _$ZentaoReportEditParamsFromJson(
    Map<String, dynamic> json) {
  return _ZentaoReportEditParams.fromJson(json);
}

/// @nodoc
mixin _$ZentaoReportEditParams {
  int get taskId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZentaoReportEditParamsCopyWith<ZentaoReportEditParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZentaoReportEditParamsCopyWith<$Res> {
  factory $ZentaoReportEditParamsCopyWith(ZentaoReportEditParams value,
          $Res Function(ZentaoReportEditParams) then) =
      _$ZentaoReportEditParamsCopyWithImpl<$Res, ZentaoReportEditParams>;
  @useResult
  $Res call({int taskId, String description});
}

/// @nodoc
class _$ZentaoReportEditParamsCopyWithImpl<$Res,
        $Val extends ZentaoReportEditParams>
    implements $ZentaoReportEditParamsCopyWith<$Res> {
  _$ZentaoReportEditParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZentaoReportEditParamsImplCopyWith<$Res>
    implements $ZentaoReportEditParamsCopyWith<$Res> {
  factory _$$ZentaoReportEditParamsImplCopyWith(
          _$ZentaoReportEditParamsImpl value,
          $Res Function(_$ZentaoReportEditParamsImpl) then) =
      __$$ZentaoReportEditParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int taskId, String description});
}

/// @nodoc
class __$$ZentaoReportEditParamsImplCopyWithImpl<$Res>
    extends _$ZentaoReportEditParamsCopyWithImpl<$Res,
        _$ZentaoReportEditParamsImpl>
    implements _$$ZentaoReportEditParamsImplCopyWith<$Res> {
  __$$ZentaoReportEditParamsImplCopyWithImpl(
      _$ZentaoReportEditParamsImpl _value,
      $Res Function(_$ZentaoReportEditParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? description = null,
  }) {
    return _then(_$ZentaoReportEditParamsImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZentaoReportEditParamsImpl implements _ZentaoReportEditParams {
  const _$ZentaoReportEditParamsImpl(
      {required this.taskId, this.description = ''});

  factory _$ZentaoReportEditParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZentaoReportEditParamsImplFromJson(json);

  @override
  final int taskId;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'ZentaoReportEditParams(taskId: $taskId, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZentaoReportEditParamsImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taskId, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZentaoReportEditParamsImplCopyWith<_$ZentaoReportEditParamsImpl>
      get copyWith => __$$ZentaoReportEditParamsImplCopyWithImpl<
          _$ZentaoReportEditParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZentaoReportEditParamsImplToJson(
      this,
    );
  }
}

abstract class _ZentaoReportEditParams implements ZentaoReportEditParams {
  const factory _ZentaoReportEditParams(
      {required final int taskId,
      final String description}) = _$ZentaoReportEditParamsImpl;

  factory _ZentaoReportEditParams.fromJson(Map<String, dynamic> json) =
      _$ZentaoReportEditParamsImpl.fromJson;

  @override
  int get taskId;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ZentaoReportEditParamsImplCopyWith<_$ZentaoReportEditParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ZentaoTaskParams _$ZentaoTaskParamsFromJson(Map<String, dynamic> json) {
  return _ZentaoTaskParams.fromJson(json);
}

/// @nodoc
mixin _$ZentaoTaskParams {
  int get taskId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZentaoTaskParamsCopyWith<ZentaoTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZentaoTaskParamsCopyWith<$Res> {
  factory $ZentaoTaskParamsCopyWith(
          ZentaoTaskParams value, $Res Function(ZentaoTaskParams) then) =
      _$ZentaoTaskParamsCopyWithImpl<$Res, ZentaoTaskParams>;
  @useResult
  $Res call({int taskId});
}

/// @nodoc
class _$ZentaoTaskParamsCopyWithImpl<$Res, $Val extends ZentaoTaskParams>
    implements $ZentaoTaskParamsCopyWith<$Res> {
  _$ZentaoTaskParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZentaoTaskParamsImplCopyWith<$Res>
    implements $ZentaoTaskParamsCopyWith<$Res> {
  factory _$$ZentaoTaskParamsImplCopyWith(_$ZentaoTaskParamsImpl value,
          $Res Function(_$ZentaoTaskParamsImpl) then) =
      __$$ZentaoTaskParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int taskId});
}

/// @nodoc
class __$$ZentaoTaskParamsImplCopyWithImpl<$Res>
    extends _$ZentaoTaskParamsCopyWithImpl<$Res, _$ZentaoTaskParamsImpl>
    implements _$$ZentaoTaskParamsImplCopyWith<$Res> {
  __$$ZentaoTaskParamsImplCopyWithImpl(_$ZentaoTaskParamsImpl _value,
      $Res Function(_$ZentaoTaskParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$ZentaoTaskParamsImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZentaoTaskParamsImpl implements _ZentaoTaskParams {
  const _$ZentaoTaskParamsImpl({required this.taskId});

  factory _$ZentaoTaskParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZentaoTaskParamsImplFromJson(json);

  @override
  final int taskId;

  @override
  String toString() {
    return 'ZentaoTaskParams(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZentaoTaskParamsImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZentaoTaskParamsImplCopyWith<_$ZentaoTaskParamsImpl> get copyWith =>
      __$$ZentaoTaskParamsImplCopyWithImpl<_$ZentaoTaskParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZentaoTaskParamsImplToJson(
      this,
    );
  }
}

abstract class _ZentaoTaskParams implements ZentaoTaskParams {
  const factory _ZentaoTaskParams({required final int taskId}) =
      _$ZentaoTaskParamsImpl;

  factory _ZentaoTaskParams.fromJson(Map<String, dynamic> json) =
      _$ZentaoTaskParamsImpl.fromJson;

  @override
  int get taskId;
  @override
  @JsonKey(ignore: true)
  _$$ZentaoTaskParamsImplCopyWith<_$ZentaoTaskParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ZentaoLinkParams _$ZentaoLinkParamsFromJson(Map<String, dynamic> json) {
  return _ZentaoLinkParams.fromJson(json);
}

/// @nodoc
mixin _$ZentaoLinkParams {
  String get account => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZentaoLinkParamsCopyWith<ZentaoLinkParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZentaoLinkParamsCopyWith<$Res> {
  factory $ZentaoLinkParamsCopyWith(
          ZentaoLinkParams value, $Res Function(ZentaoLinkParams) then) =
      _$ZentaoLinkParamsCopyWithImpl<$Res, ZentaoLinkParams>;
  @useResult
  $Res call({String account, String password});
}

/// @nodoc
class _$ZentaoLinkParamsCopyWithImpl<$Res, $Val extends ZentaoLinkParams>
    implements $ZentaoLinkParamsCopyWith<$Res> {
  _$ZentaoLinkParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZentaoLinkParamsImplCopyWith<$Res>
    implements $ZentaoLinkParamsCopyWith<$Res> {
  factory _$$ZentaoLinkParamsImplCopyWith(_$ZentaoLinkParamsImpl value,
          $Res Function(_$ZentaoLinkParamsImpl) then) =
      __$$ZentaoLinkParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String account, String password});
}

/// @nodoc
class __$$ZentaoLinkParamsImplCopyWithImpl<$Res>
    extends _$ZentaoLinkParamsCopyWithImpl<$Res, _$ZentaoLinkParamsImpl>
    implements _$$ZentaoLinkParamsImplCopyWith<$Res> {
  __$$ZentaoLinkParamsImplCopyWithImpl(_$ZentaoLinkParamsImpl _value,
      $Res Function(_$ZentaoLinkParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? password = null,
  }) {
    return _then(_$ZentaoLinkParamsImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZentaoLinkParamsImpl implements _ZentaoLinkParams {
  const _$ZentaoLinkParamsImpl({required this.account, required this.password});

  factory _$ZentaoLinkParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZentaoLinkParamsImplFromJson(json);

  @override
  final String account;
  @override
  final String password;

  @override
  String toString() {
    return 'ZentaoLinkParams(account: $account, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZentaoLinkParamsImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZentaoLinkParamsImplCopyWith<_$ZentaoLinkParamsImpl> get copyWith =>
      __$$ZentaoLinkParamsImplCopyWithImpl<_$ZentaoLinkParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZentaoLinkParamsImplToJson(
      this,
    );
  }
}

abstract class _ZentaoLinkParams implements ZentaoLinkParams {
  const factory _ZentaoLinkParams(
      {required final String account,
      required final String password}) = _$ZentaoLinkParamsImpl;

  factory _ZentaoLinkParams.fromJson(Map<String, dynamic> json) =
      _$ZentaoLinkParamsImpl.fromJson;

  @override
  String get account;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ZentaoLinkParamsImplCopyWith<_$ZentaoLinkParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ZentaoProjectParams _$ZentaoProjectParamsFromJson(Map<String, dynamic> json) {
  return _ZentaoProjectParams.fromJson(json);
}

/// @nodoc
mixin _$ZentaoProjectParams {
  int get projectId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZentaoProjectParamsCopyWith<ZentaoProjectParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZentaoProjectParamsCopyWith<$Res> {
  factory $ZentaoProjectParamsCopyWith(
          ZentaoProjectParams value, $Res Function(ZentaoProjectParams) then) =
      _$ZentaoProjectParamsCopyWithImpl<$Res, ZentaoProjectParams>;
  @useResult
  $Res call({int projectId});
}

/// @nodoc
class _$ZentaoProjectParamsCopyWithImpl<$Res, $Val extends ZentaoProjectParams>
    implements $ZentaoProjectParamsCopyWith<$Res> {
  _$ZentaoProjectParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
  }) {
    return _then(_value.copyWith(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZentaoProjectParamsImplCopyWith<$Res>
    implements $ZentaoProjectParamsCopyWith<$Res> {
  factory _$$ZentaoProjectParamsImplCopyWith(_$ZentaoProjectParamsImpl value,
          $Res Function(_$ZentaoProjectParamsImpl) then) =
      __$$ZentaoProjectParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int projectId});
}

/// @nodoc
class __$$ZentaoProjectParamsImplCopyWithImpl<$Res>
    extends _$ZentaoProjectParamsCopyWithImpl<$Res, _$ZentaoProjectParamsImpl>
    implements _$$ZentaoProjectParamsImplCopyWith<$Res> {
  __$$ZentaoProjectParamsImplCopyWithImpl(_$ZentaoProjectParamsImpl _value,
      $Res Function(_$ZentaoProjectParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
  }) {
    return _then(_$ZentaoProjectParamsImpl(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZentaoProjectParamsImpl implements _ZentaoProjectParams {
  const _$ZentaoProjectParamsImpl({required this.projectId});

  factory _$ZentaoProjectParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZentaoProjectParamsImplFromJson(json);

  @override
  final int projectId;

  @override
  String toString() {
    return 'ZentaoProjectParams(projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZentaoProjectParamsImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZentaoProjectParamsImplCopyWith<_$ZentaoProjectParamsImpl> get copyWith =>
      __$$ZentaoProjectParamsImplCopyWithImpl<_$ZentaoProjectParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZentaoProjectParamsImplToJson(
      this,
    );
  }
}

abstract class _ZentaoProjectParams implements ZentaoProjectParams {
  const factory _ZentaoProjectParams({required final int projectId}) =
      _$ZentaoProjectParamsImpl;

  factory _ZentaoProjectParams.fromJson(Map<String, dynamic> json) =
      _$ZentaoProjectParamsImpl.fromJson;

  @override
  int get projectId;
  @override
  @JsonKey(ignore: true)
  _$$ZentaoProjectParamsImplCopyWith<_$ZentaoProjectParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ZentaoExecutionParams _$ZentaoExecutionParamsFromJson(
    Map<String, dynamic> json) {
  return _ZentaoExecutionParams.fromJson(json);
}

/// @nodoc
mixin _$ZentaoExecutionParams {
  int get executionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZentaoExecutionParamsCopyWith<ZentaoExecutionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZentaoExecutionParamsCopyWith<$Res> {
  factory $ZentaoExecutionParamsCopyWith(ZentaoExecutionParams value,
          $Res Function(ZentaoExecutionParams) then) =
      _$ZentaoExecutionParamsCopyWithImpl<$Res, ZentaoExecutionParams>;
  @useResult
  $Res call({int executionId});
}

/// @nodoc
class _$ZentaoExecutionParamsCopyWithImpl<$Res,
        $Val extends ZentaoExecutionParams>
    implements $ZentaoExecutionParamsCopyWith<$Res> {
  _$ZentaoExecutionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? executionId = null,
  }) {
    return _then(_value.copyWith(
      executionId: null == executionId
          ? _value.executionId
          : executionId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZentaoExecutionParamsImplCopyWith<$Res>
    implements $ZentaoExecutionParamsCopyWith<$Res> {
  factory _$$ZentaoExecutionParamsImplCopyWith(
          _$ZentaoExecutionParamsImpl value,
          $Res Function(_$ZentaoExecutionParamsImpl) then) =
      __$$ZentaoExecutionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int executionId});
}

/// @nodoc
class __$$ZentaoExecutionParamsImplCopyWithImpl<$Res>
    extends _$ZentaoExecutionParamsCopyWithImpl<$Res,
        _$ZentaoExecutionParamsImpl>
    implements _$$ZentaoExecutionParamsImplCopyWith<$Res> {
  __$$ZentaoExecutionParamsImplCopyWithImpl(_$ZentaoExecutionParamsImpl _value,
      $Res Function(_$ZentaoExecutionParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? executionId = null,
  }) {
    return _then(_$ZentaoExecutionParamsImpl(
      executionId: null == executionId
          ? _value.executionId
          : executionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZentaoExecutionParamsImpl implements _ZentaoExecutionParams {
  const _$ZentaoExecutionParamsImpl({required this.executionId});

  factory _$ZentaoExecutionParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZentaoExecutionParamsImplFromJson(json);

  @override
  final int executionId;

  @override
  String toString() {
    return 'ZentaoExecutionParams(executionId: $executionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZentaoExecutionParamsImpl &&
            (identical(other.executionId, executionId) ||
                other.executionId == executionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, executionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZentaoExecutionParamsImplCopyWith<_$ZentaoExecutionParamsImpl>
      get copyWith => __$$ZentaoExecutionParamsImplCopyWithImpl<
          _$ZentaoExecutionParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZentaoExecutionParamsImplToJson(
      this,
    );
  }
}

abstract class _ZentaoExecutionParams implements ZentaoExecutionParams {
  const factory _ZentaoExecutionParams({required final int executionId}) =
      _$ZentaoExecutionParamsImpl;

  factory _ZentaoExecutionParams.fromJson(Map<String, dynamic> json) =
      _$ZentaoExecutionParamsImpl.fromJson;

  @override
  int get executionId;
  @override
  @JsonKey(ignore: true)
  _$$ZentaoExecutionParamsImplCopyWith<_$ZentaoExecutionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
