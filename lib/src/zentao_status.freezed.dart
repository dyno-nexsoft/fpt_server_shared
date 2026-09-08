// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zentao_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ZentaoStatus _$ZentaoStatusFromJson(Map<String, dynamic> json) {
  return _ZentaoStatus.fromJson(json);
}

/// @nodoc
mixin _$ZentaoStatus {
  /// Whether the calling Discord account has Zentao credentials stored.
  bool get linked => throw _privateConstructorUsedError;

  /// The linked Zentao account name — never the stored password.
  String? get account => throw _privateConstructorUsedError;

  /// The server-wide project new report tasks are filed under.
  int get projectId => throw _privateConstructorUsedError;

  /// The server-wide execution (sprint) new report tasks are created in.
  int get executionId => throw _privateConstructorUsedError;

  /// Today's report task for the calling user, if one was started.
  int? get todayTaskId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZentaoStatusCopyWith<ZentaoStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZentaoStatusCopyWith<$Res> {
  factory $ZentaoStatusCopyWith(
          ZentaoStatus value, $Res Function(ZentaoStatus) then) =
      _$ZentaoStatusCopyWithImpl<$Res, ZentaoStatus>;
  @useResult
  $Res call(
      {bool linked,
      String? account,
      int projectId,
      int executionId,
      int? todayTaskId});
}

/// @nodoc
class _$ZentaoStatusCopyWithImpl<$Res, $Val extends ZentaoStatus>
    implements $ZentaoStatusCopyWith<$Res> {
  _$ZentaoStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linked = null,
    Object? account = freezed,
    Object? projectId = null,
    Object? executionId = null,
    Object? todayTaskId = freezed,
  }) {
    return _then(_value.copyWith(
      linked: null == linked
          ? _value.linked
          : linked // ignore: cast_nullable_to_non_nullable
              as bool,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      executionId: null == executionId
          ? _value.executionId
          : executionId // ignore: cast_nullable_to_non_nullable
              as int,
      todayTaskId: freezed == todayTaskId
          ? _value.todayTaskId
          : todayTaskId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZentaoStatusImplCopyWith<$Res>
    implements $ZentaoStatusCopyWith<$Res> {
  factory _$$ZentaoStatusImplCopyWith(
          _$ZentaoStatusImpl value, $Res Function(_$ZentaoStatusImpl) then) =
      __$$ZentaoStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool linked,
      String? account,
      int projectId,
      int executionId,
      int? todayTaskId});
}

/// @nodoc
class __$$ZentaoStatusImplCopyWithImpl<$Res>
    extends _$ZentaoStatusCopyWithImpl<$Res, _$ZentaoStatusImpl>
    implements _$$ZentaoStatusImplCopyWith<$Res> {
  __$$ZentaoStatusImplCopyWithImpl(
      _$ZentaoStatusImpl _value, $Res Function(_$ZentaoStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linked = null,
    Object? account = freezed,
    Object? projectId = null,
    Object? executionId = null,
    Object? todayTaskId = freezed,
  }) {
    return _then(_$ZentaoStatusImpl(
      linked: null == linked
          ? _value.linked
          : linked // ignore: cast_nullable_to_non_nullable
              as bool,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      executionId: null == executionId
          ? _value.executionId
          : executionId // ignore: cast_nullable_to_non_nullable
              as int,
      todayTaskId: freezed == todayTaskId
          ? _value.todayTaskId
          : todayTaskId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZentaoStatusImpl implements _ZentaoStatus {
  const _$ZentaoStatusImpl(
      {required this.linked,
      this.account,
      required this.projectId,
      required this.executionId,
      this.todayTaskId});

  factory _$ZentaoStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZentaoStatusImplFromJson(json);

  /// Whether the calling Discord account has Zentao credentials stored.
  @override
  final bool linked;

  /// The linked Zentao account name — never the stored password.
  @override
  final String? account;

  /// The server-wide project new report tasks are filed under.
  @override
  final int projectId;

  /// The server-wide execution (sprint) new report tasks are created in.
  @override
  final int executionId;

  /// Today's report task for the calling user, if one was started.
  @override
  final int? todayTaskId;

  @override
  String toString() {
    return 'ZentaoStatus(linked: $linked, account: $account, projectId: $projectId, executionId: $executionId, todayTaskId: $todayTaskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZentaoStatusImpl &&
            (identical(other.linked, linked) || other.linked == linked) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.executionId, executionId) ||
                other.executionId == executionId) &&
            (identical(other.todayTaskId, todayTaskId) ||
                other.todayTaskId == todayTaskId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, linked, account, projectId, executionId, todayTaskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZentaoStatusImplCopyWith<_$ZentaoStatusImpl> get copyWith =>
      __$$ZentaoStatusImplCopyWithImpl<_$ZentaoStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZentaoStatusImplToJson(
      this,
    );
  }
}

abstract class _ZentaoStatus implements ZentaoStatus {
  const factory _ZentaoStatus(
      {required final bool linked,
      final String? account,
      required final int projectId,
      required final int executionId,
      final int? todayTaskId}) = _$ZentaoStatusImpl;

  factory _ZentaoStatus.fromJson(Map<String, dynamic> json) =
      _$ZentaoStatusImpl.fromJson;

  @override

  /// Whether the calling Discord account has Zentao credentials stored.
  bool get linked;
  @override

  /// The linked Zentao account name — never the stored password.
  String? get account;
  @override

  /// The server-wide project new report tasks are filed under.
  int get projectId;
  @override

  /// The server-wide execution (sprint) new report tasks are created in.
  int get executionId;
  @override

  /// Today's report task for the calling user, if one was started.
  int? get todayTaskId;
  @override
  @JsonKey(ignore: true)
  _$$ZentaoStatusImplCopyWith<_$ZentaoStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
