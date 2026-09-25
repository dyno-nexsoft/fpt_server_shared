// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_mutation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActiveMutation _$ActiveMutationFromJson(Map<String, dynamic> json) {
  return _ActiveMutation.fromJson(json);
}

/// @nodoc
mixin _$ActiveMutation {
  /// The invoking `ActionRunner`'s own correlation id — stable for the
  /// life of this one call, not reused across retries the way
  /// `artifactKey`/`JobId` are for a job.
  String get id => throw _privateConstructorUsedError;
  String get actionName => throw _privateConstructorUsedError;

  /// One-line description of *this* call specifically (e.g. "Reviewing
  /// `some-mr-title`"), not just the action's own static description —
  /// see `Action.describeInvocation`.
  String get label => throw _privateConstructorUsedError;

  /// The latest progress line this invocation reported, or [label] itself
  /// before the first one arrives.
  String get status => throw _privateConstructorUsedError;
  DateTime get startedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveMutationCopyWith<ActiveMutation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveMutationCopyWith<$Res> {
  factory $ActiveMutationCopyWith(
          ActiveMutation value, $Res Function(ActiveMutation) then) =
      _$ActiveMutationCopyWithImpl<$Res, ActiveMutation>;
  @useResult
  $Res call(
      {String id,
      String actionName,
      String label,
      String status,
      DateTime startedAt});
}

/// @nodoc
class _$ActiveMutationCopyWithImpl<$Res, $Val extends ActiveMutation>
    implements $ActiveMutationCopyWith<$Res> {
  _$ActiveMutationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? actionName = null,
    Object? label = null,
    Object? status = null,
    Object? startedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      actionName: null == actionName
          ? _value.actionName
          : actionName // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActiveMutationImplCopyWith<$Res>
    implements $ActiveMutationCopyWith<$Res> {
  factory _$$ActiveMutationImplCopyWith(_$ActiveMutationImpl value,
          $Res Function(_$ActiveMutationImpl) then) =
      __$$ActiveMutationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String actionName,
      String label,
      String status,
      DateTime startedAt});
}

/// @nodoc
class __$$ActiveMutationImplCopyWithImpl<$Res>
    extends _$ActiveMutationCopyWithImpl<$Res, _$ActiveMutationImpl>
    implements _$$ActiveMutationImplCopyWith<$Res> {
  __$$ActiveMutationImplCopyWithImpl(
      _$ActiveMutationImpl _value, $Res Function(_$ActiveMutationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? actionName = null,
    Object? label = null,
    Object? status = null,
    Object? startedAt = null,
  }) {
    return _then(_$ActiveMutationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      actionName: null == actionName
          ? _value.actionName
          : actionName // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveMutationImpl implements _ActiveMutation {
  const _$ActiveMutationImpl(
      {required this.id,
      required this.actionName,
      required this.label,
      required this.status,
      required this.startedAt});

  factory _$ActiveMutationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveMutationImplFromJson(json);

  /// The invoking `ActionRunner`'s own correlation id — stable for the
  /// life of this one call, not reused across retries the way
  /// `artifactKey`/`JobId` are for a job.
  @override
  final String id;
  @override
  final String actionName;

  /// One-line description of *this* call specifically (e.g. "Reviewing
  /// `some-mr-title`"), not just the action's own static description —
  /// see `Action.describeInvocation`.
  @override
  final String label;

  /// The latest progress line this invocation reported, or [label] itself
  /// before the first one arrives.
  @override
  final String status;
  @override
  final DateTime startedAt;

  @override
  String toString() {
    return 'ActiveMutation(id: $id, actionName: $actionName, label: $label, status: $status, startedAt: $startedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveMutationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.actionName, actionName) ||
                other.actionName == actionName) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, actionName, label, status, startedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveMutationImplCopyWith<_$ActiveMutationImpl> get copyWith =>
      __$$ActiveMutationImplCopyWithImpl<_$ActiveMutationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveMutationImplToJson(
      this,
    );
  }
}

abstract class _ActiveMutation implements ActiveMutation {
  const factory _ActiveMutation(
      {required final String id,
      required final String actionName,
      required final String label,
      required final String status,
      required final DateTime startedAt}) = _$ActiveMutationImpl;

  factory _ActiveMutation.fromJson(Map<String, dynamic> json) =
      _$ActiveMutationImpl.fromJson;

  @override

  /// The invoking `ActionRunner`'s own correlation id — stable for the
  /// life of this one call, not reused across retries the way
  /// `artifactKey`/`JobId` are for a job.
  String get id;
  @override
  String get actionName;
  @override

  /// One-line description of *this* call specifically (e.g. "Reviewing
  /// `some-mr-title`"), not just the action's own static description —
  /// see `Action.describeInvocation`.
  String get label;
  @override

  /// The latest progress line this invocation reported, or [label] itself
  /// before the first one arrives.
  String get status;
  @override
  DateTime get startedAt;
  @override
  @JsonKey(ignore: true)
  _$$ActiveMutationImplCopyWith<_$ActiveMutationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
