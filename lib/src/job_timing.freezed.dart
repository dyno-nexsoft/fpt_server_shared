// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_timing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobTiming _$JobTimingFromJson(Map<String, dynamic> json) {
  return _JobTiming.fromJson(json);
}

/// @nodoc
mixin _$JobTiming {
  /// Pins the job to this point of each working day; null for a daily job.
  TimeAnchor? get anchor => throw _privateConstructorUsedError;

  /// Minutes after [anchor] (before, when negative).
  int get offsetMinutes => throw _privateConstructorUsedError;

  /// `HH:mm`, for a job that runs every day at a fixed time.
  String? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobTimingCopyWith<JobTiming> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobTimingCopyWith<$Res> {
  factory $JobTimingCopyWith(JobTiming value, $Res Function(JobTiming) then) =
      _$JobTimingCopyWithImpl<$Res, JobTiming>;
  @useResult
  $Res call({TimeAnchor? anchor, int offsetMinutes, String? time});
}

/// @nodoc
class _$JobTimingCopyWithImpl<$Res, $Val extends JobTiming>
    implements $JobTimingCopyWith<$Res> {
  _$JobTimingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anchor = freezed,
    Object? offsetMinutes = null,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as TimeAnchor?,
      offsetMinutes: null == offsetMinutes
          ? _value.offsetMinutes
          : offsetMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobTimingImplCopyWith<$Res>
    implements $JobTimingCopyWith<$Res> {
  factory _$$JobTimingImplCopyWith(
          _$JobTimingImpl value, $Res Function(_$JobTimingImpl) then) =
      __$$JobTimingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimeAnchor? anchor, int offsetMinutes, String? time});
}

/// @nodoc
class __$$JobTimingImplCopyWithImpl<$Res>
    extends _$JobTimingCopyWithImpl<$Res, _$JobTimingImpl>
    implements _$$JobTimingImplCopyWith<$Res> {
  __$$JobTimingImplCopyWithImpl(
      _$JobTimingImpl _value, $Res Function(_$JobTimingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anchor = freezed,
    Object? offsetMinutes = null,
    Object? time = freezed,
  }) {
    return _then(_$JobTimingImpl(
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as TimeAnchor?,
      offsetMinutes: null == offsetMinutes
          ? _value.offsetMinutes
          : offsetMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobTimingImpl extends _JobTiming {
  const _$JobTimingImpl({this.anchor, this.offsetMinutes = 0, this.time})
      : super._();

  factory _$JobTimingImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobTimingImplFromJson(json);

  /// Pins the job to this point of each working day; null for a daily job.
  @override
  final TimeAnchor? anchor;

  /// Minutes after [anchor] (before, when negative).
  @override
  @JsonKey()
  final int offsetMinutes;

  /// `HH:mm`, for a job that runs every day at a fixed time.
  @override
  final String? time;

  @override
  String toString() {
    return 'JobTiming(anchor: $anchor, offsetMinutes: $offsetMinutes, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobTimingImpl &&
            (identical(other.anchor, anchor) || other.anchor == anchor) &&
            (identical(other.offsetMinutes, offsetMinutes) ||
                other.offsetMinutes == offsetMinutes) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, anchor, offsetMinutes, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobTimingImplCopyWith<_$JobTimingImpl> get copyWith =>
      __$$JobTimingImplCopyWithImpl<_$JobTimingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobTimingImplToJson(
      this,
    );
  }
}

abstract class _JobTiming extends JobTiming {
  const factory _JobTiming(
      {final TimeAnchor? anchor,
      final int offsetMinutes,
      final String? time}) = _$JobTimingImpl;
  const _JobTiming._() : super._();

  factory _JobTiming.fromJson(Map<String, dynamic> json) =
      _$JobTimingImpl.fromJson;

  @override

  /// Pins the job to this point of each working day; null for a daily job.
  TimeAnchor? get anchor;
  @override

  /// Minutes after [anchor] (before, when negative).
  int get offsetMinutes;
  @override

  /// `HH:mm`, for a job that runs every day at a fixed time.
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$JobTimingImplCopyWith<_$JobTimingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
