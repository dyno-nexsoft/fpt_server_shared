// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduledJobInfo _$ScheduledJobInfoFromJson(Map<String, dynamic> json) {
  return _ScheduledJobInfo.fromJson(json);
}

/// @nodoc
mixin _$ScheduledJobInfo {
  String get name => throw _privateConstructorUsedError;

  /// When it runs, e.g. "Working days, at the start of the day + 30 min" or
  /// "Every day at 23:00".
  String get rule => throw _privateConstructorUsedError;

  /// Whether the working calendar decides which days it runs on. False for a
  /// job that runs every day regardless, such as the nightly cleanup.
  bool get followsCalendar => throw _privateConstructorUsedError;

  /// The next time it will run, in the server's local time; null when the
  /// calendar leaves it no day to run on in the coming weeks.
  DateTime? get nextRun => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduledJobInfoCopyWith<ScheduledJobInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledJobInfoCopyWith<$Res> {
  factory $ScheduledJobInfoCopyWith(
          ScheduledJobInfo value, $Res Function(ScheduledJobInfo) then) =
      _$ScheduledJobInfoCopyWithImpl<$Res, ScheduledJobInfo>;
  @useResult
  $Res call(
      {String name, String rule, bool followsCalendar, DateTime? nextRun});
}

/// @nodoc
class _$ScheduledJobInfoCopyWithImpl<$Res, $Val extends ScheduledJobInfo>
    implements $ScheduledJobInfoCopyWith<$Res> {
  _$ScheduledJobInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rule = null,
    Object? followsCalendar = null,
    Object? nextRun = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rule: null == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String,
      followsCalendar: null == followsCalendar
          ? _value.followsCalendar
          : followsCalendar // ignore: cast_nullable_to_non_nullable
              as bool,
      nextRun: freezed == nextRun
          ? _value.nextRun
          : nextRun // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduledJobInfoImplCopyWith<$Res>
    implements $ScheduledJobInfoCopyWith<$Res> {
  factory _$$ScheduledJobInfoImplCopyWith(_$ScheduledJobInfoImpl value,
          $Res Function(_$ScheduledJobInfoImpl) then) =
      __$$ScheduledJobInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String rule, bool followsCalendar, DateTime? nextRun});
}

/// @nodoc
class __$$ScheduledJobInfoImplCopyWithImpl<$Res>
    extends _$ScheduledJobInfoCopyWithImpl<$Res, _$ScheduledJobInfoImpl>
    implements _$$ScheduledJobInfoImplCopyWith<$Res> {
  __$$ScheduledJobInfoImplCopyWithImpl(_$ScheduledJobInfoImpl _value,
      $Res Function(_$ScheduledJobInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rule = null,
    Object? followsCalendar = null,
    Object? nextRun = freezed,
  }) {
    return _then(_$ScheduledJobInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rule: null == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String,
      followsCalendar: null == followsCalendar
          ? _value.followsCalendar
          : followsCalendar // ignore: cast_nullable_to_non_nullable
              as bool,
      nextRun: freezed == nextRun
          ? _value.nextRun
          : nextRun // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduledJobInfoImpl implements _ScheduledJobInfo {
  const _$ScheduledJobInfoImpl(
      {required this.name,
      required this.rule,
      required this.followsCalendar,
      this.nextRun});

  factory _$ScheduledJobInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduledJobInfoImplFromJson(json);

  @override
  final String name;

  /// When it runs, e.g. "Working days, at the start of the day + 30 min" or
  /// "Every day at 23:00".
  @override
  final String rule;

  /// Whether the working calendar decides which days it runs on. False for a
  /// job that runs every day regardless, such as the nightly cleanup.
  @override
  final bool followsCalendar;

  /// The next time it will run, in the server's local time; null when the
  /// calendar leaves it no day to run on in the coming weeks.
  @override
  final DateTime? nextRun;

  @override
  String toString() {
    return 'ScheduledJobInfo(name: $name, rule: $rule, followsCalendar: $followsCalendar, nextRun: $nextRun)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledJobInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rule, rule) || other.rule == rule) &&
            (identical(other.followsCalendar, followsCalendar) ||
                other.followsCalendar == followsCalendar) &&
            (identical(other.nextRun, nextRun) || other.nextRun == nextRun));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, rule, followsCalendar, nextRun);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledJobInfoImplCopyWith<_$ScheduledJobInfoImpl> get copyWith =>
      __$$ScheduledJobInfoImplCopyWithImpl<_$ScheduledJobInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduledJobInfoImplToJson(
      this,
    );
  }
}

abstract class _ScheduledJobInfo implements ScheduledJobInfo {
  const factory _ScheduledJobInfo(
      {required final String name,
      required final String rule,
      required final bool followsCalendar,
      final DateTime? nextRun}) = _$ScheduledJobInfoImpl;

  factory _ScheduledJobInfo.fromJson(Map<String, dynamic> json) =
      _$ScheduledJobInfoImpl.fromJson;

  @override
  String get name;
  @override

  /// When it runs, e.g. "Working days, at the start of the day + 30 min" or
  /// "Every day at 23:00".
  String get rule;
  @override

  /// Whether the working calendar decides which days it runs on. False for a
  /// job that runs every day regardless, such as the nightly cleanup.
  bool get followsCalendar;
  @override

  /// The next time it will run, in the server's local time; null when the
  /// calendar leaves it no day to run on in the coming weeks.
  DateTime? get nextRun;
  @override
  @JsonKey(ignore: true)
  _$$ScheduledJobInfoImplCopyWith<_$ScheduledJobInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleInfo _$ScheduleInfoFromJson(Map<String, dynamic> json) {
  return _ScheduleInfo.fromJson(json);
}

/// @nodoc
mixin _$ScheduleInfo {
  WorkCalendar get calendar => throw _privateConstructorUsedError;
  List<ScheduledJobInfo> get jobs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleInfoCopyWith<ScheduleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleInfoCopyWith<$Res> {
  factory $ScheduleInfoCopyWith(
          ScheduleInfo value, $Res Function(ScheduleInfo) then) =
      _$ScheduleInfoCopyWithImpl<$Res, ScheduleInfo>;
  @useResult
  $Res call({WorkCalendar calendar, List<ScheduledJobInfo> jobs});

  $WorkCalendarCopyWith<$Res> get calendar;
}

/// @nodoc
class _$ScheduleInfoCopyWithImpl<$Res, $Val extends ScheduleInfo>
    implements $ScheduleInfoCopyWith<$Res> {
  _$ScheduleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendar = null,
    Object? jobs = null,
  }) {
    return _then(_value.copyWith(
      calendar: null == calendar
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as WorkCalendar,
      jobs: null == jobs
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<ScheduledJobInfo>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkCalendarCopyWith<$Res> get calendar {
    return $WorkCalendarCopyWith<$Res>(_value.calendar, (value) {
      return _then(_value.copyWith(calendar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleInfoImplCopyWith<$Res>
    implements $ScheduleInfoCopyWith<$Res> {
  factory _$$ScheduleInfoImplCopyWith(
          _$ScheduleInfoImpl value, $Res Function(_$ScheduleInfoImpl) then) =
      __$$ScheduleInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WorkCalendar calendar, List<ScheduledJobInfo> jobs});

  @override
  $WorkCalendarCopyWith<$Res> get calendar;
}

/// @nodoc
class __$$ScheduleInfoImplCopyWithImpl<$Res>
    extends _$ScheduleInfoCopyWithImpl<$Res, _$ScheduleInfoImpl>
    implements _$$ScheduleInfoImplCopyWith<$Res> {
  __$$ScheduleInfoImplCopyWithImpl(
      _$ScheduleInfoImpl _value, $Res Function(_$ScheduleInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendar = null,
    Object? jobs = null,
  }) {
    return _then(_$ScheduleInfoImpl(
      calendar: null == calendar
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as WorkCalendar,
      jobs: null == jobs
          ? _value._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<ScheduledJobInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleInfoImpl implements _ScheduleInfo {
  const _$ScheduleInfoImpl(
      {required this.calendar,
      final List<ScheduledJobInfo> jobs = const <ScheduledJobInfo>[]})
      : _jobs = jobs;

  factory _$ScheduleInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleInfoImplFromJson(json);

  @override
  final WorkCalendar calendar;
  final List<ScheduledJobInfo> _jobs;
  @override
  @JsonKey()
  List<ScheduledJobInfo> get jobs {
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  @override
  String toString() {
    return 'ScheduleInfo(calendar: $calendar, jobs: $jobs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleInfoImpl &&
            (identical(other.calendar, calendar) ||
                other.calendar == calendar) &&
            const DeepCollectionEquality().equals(other._jobs, _jobs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, calendar, const DeepCollectionEquality().hash(_jobs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleInfoImplCopyWith<_$ScheduleInfoImpl> get copyWith =>
      __$$ScheduleInfoImplCopyWithImpl<_$ScheduleInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleInfoImplToJson(
      this,
    );
  }
}

abstract class _ScheduleInfo implements ScheduleInfo {
  const factory _ScheduleInfo(
      {required final WorkCalendar calendar,
      final List<ScheduledJobInfo> jobs}) = _$ScheduleInfoImpl;

  factory _ScheduleInfo.fromJson(Map<String, dynamic> json) =
      _$ScheduleInfoImpl.fromJson;

  @override
  WorkCalendar get calendar;
  @override
  List<ScheduledJobInfo> get jobs;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleInfoImplCopyWith<_$ScheduleInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleSetParams _$ScheduleSetParamsFromJson(Map<String, dynamic> json) {
  return _ScheduleSetParams.fromJson(json);
}

/// @nodoc
mixin _$ScheduleSetParams {
  /// The whole calendar, replacing what is stored — the dashboard edits it
  /// as one document, so there is no partial update to get half applied.
  WorkCalendar get calendar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleSetParamsCopyWith<ScheduleSetParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleSetParamsCopyWith<$Res> {
  factory $ScheduleSetParamsCopyWith(
          ScheduleSetParams value, $Res Function(ScheduleSetParams) then) =
      _$ScheduleSetParamsCopyWithImpl<$Res, ScheduleSetParams>;
  @useResult
  $Res call({WorkCalendar calendar});

  $WorkCalendarCopyWith<$Res> get calendar;
}

/// @nodoc
class _$ScheduleSetParamsCopyWithImpl<$Res, $Val extends ScheduleSetParams>
    implements $ScheduleSetParamsCopyWith<$Res> {
  _$ScheduleSetParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendar = null,
  }) {
    return _then(_value.copyWith(
      calendar: null == calendar
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as WorkCalendar,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkCalendarCopyWith<$Res> get calendar {
    return $WorkCalendarCopyWith<$Res>(_value.calendar, (value) {
      return _then(_value.copyWith(calendar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleSetParamsImplCopyWith<$Res>
    implements $ScheduleSetParamsCopyWith<$Res> {
  factory _$$ScheduleSetParamsImplCopyWith(_$ScheduleSetParamsImpl value,
          $Res Function(_$ScheduleSetParamsImpl) then) =
      __$$ScheduleSetParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WorkCalendar calendar});

  @override
  $WorkCalendarCopyWith<$Res> get calendar;
}

/// @nodoc
class __$$ScheduleSetParamsImplCopyWithImpl<$Res>
    extends _$ScheduleSetParamsCopyWithImpl<$Res, _$ScheduleSetParamsImpl>
    implements _$$ScheduleSetParamsImplCopyWith<$Res> {
  __$$ScheduleSetParamsImplCopyWithImpl(_$ScheduleSetParamsImpl _value,
      $Res Function(_$ScheduleSetParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendar = null,
  }) {
    return _then(_$ScheduleSetParamsImpl(
      calendar: null == calendar
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as WorkCalendar,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleSetParamsImpl implements _ScheduleSetParams {
  const _$ScheduleSetParamsImpl({required this.calendar});

  factory _$ScheduleSetParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleSetParamsImplFromJson(json);

  /// The whole calendar, replacing what is stored — the dashboard edits it
  /// as one document, so there is no partial update to get half applied.
  @override
  final WorkCalendar calendar;

  @override
  String toString() {
    return 'ScheduleSetParams(calendar: $calendar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleSetParamsImpl &&
            (identical(other.calendar, calendar) ||
                other.calendar == calendar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, calendar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleSetParamsImplCopyWith<_$ScheduleSetParamsImpl> get copyWith =>
      __$$ScheduleSetParamsImplCopyWithImpl<_$ScheduleSetParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleSetParamsImplToJson(
      this,
    );
  }
}

abstract class _ScheduleSetParams implements ScheduleSetParams {
  const factory _ScheduleSetParams({required final WorkCalendar calendar}) =
      _$ScheduleSetParamsImpl;

  factory _ScheduleSetParams.fromJson(Map<String, dynamic> json) =
      _$ScheduleSetParamsImpl.fromJson;

  @override

  /// The whole calendar, replacing what is stored — the dashboard edits it
  /// as one document, so there is no partial update to get half applied.
  WorkCalendar get calendar;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleSetParamsImplCopyWith<_$ScheduleSetParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
