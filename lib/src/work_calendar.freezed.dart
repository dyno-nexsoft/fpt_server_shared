// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkHours _$WorkHoursFromJson(Map<String, dynamic> json) {
  return _WorkHours.fromJson(json);
}

/// @nodoc
mixin _$WorkHours {
  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;
  String? get lunchStart => throw _privateConstructorUsedError;
  String? get lunchEnd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkHoursCopyWith<WorkHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkHoursCopyWith<$Res> {
  factory $WorkHoursCopyWith(WorkHours value, $Res Function(WorkHours) then) =
      _$WorkHoursCopyWithImpl<$Res, WorkHours>;
  @useResult
  $Res call({String start, String end, String? lunchStart, String? lunchEnd});
}

/// @nodoc
class _$WorkHoursCopyWithImpl<$Res, $Val extends WorkHours>
    implements $WorkHoursCopyWith<$Res> {
  _$WorkHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? lunchStart = freezed,
    Object? lunchEnd = freezed,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      lunchStart: freezed == lunchStart
          ? _value.lunchStart
          : lunchStart // ignore: cast_nullable_to_non_nullable
              as String?,
      lunchEnd: freezed == lunchEnd
          ? _value.lunchEnd
          : lunchEnd // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkHoursImplCopyWith<$Res>
    implements $WorkHoursCopyWith<$Res> {
  factory _$$WorkHoursImplCopyWith(
          _$WorkHoursImpl value, $Res Function(_$WorkHoursImpl) then) =
      __$$WorkHoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String start, String end, String? lunchStart, String? lunchEnd});
}

/// @nodoc
class __$$WorkHoursImplCopyWithImpl<$Res>
    extends _$WorkHoursCopyWithImpl<$Res, _$WorkHoursImpl>
    implements _$$WorkHoursImplCopyWith<$Res> {
  __$$WorkHoursImplCopyWithImpl(
      _$WorkHoursImpl _value, $Res Function(_$WorkHoursImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? lunchStart = freezed,
    Object? lunchEnd = freezed,
  }) {
    return _then(_$WorkHoursImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      lunchStart: freezed == lunchStart
          ? _value.lunchStart
          : lunchStart // ignore: cast_nullable_to_non_nullable
              as String?,
      lunchEnd: freezed == lunchEnd
          ? _value.lunchEnd
          : lunchEnd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkHoursImpl extends _WorkHours {
  const _$WorkHoursImpl(
      {required this.start, required this.end, this.lunchStart, this.lunchEnd})
      : super._();

  factory _$WorkHoursImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkHoursImplFromJson(json);

  @override
  final String start;
  @override
  final String end;
  @override
  final String? lunchStart;
  @override
  final String? lunchEnd;

  @override
  String toString() {
    return 'WorkHours(start: $start, end: $end, lunchStart: $lunchStart, lunchEnd: $lunchEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkHoursImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.lunchStart, lunchStart) ||
                other.lunchStart == lunchStart) &&
            (identical(other.lunchEnd, lunchEnd) ||
                other.lunchEnd == lunchEnd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, start, end, lunchStart, lunchEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkHoursImplCopyWith<_$WorkHoursImpl> get copyWith =>
      __$$WorkHoursImplCopyWithImpl<_$WorkHoursImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkHoursImplToJson(
      this,
    );
  }
}

abstract class _WorkHours extends WorkHours {
  const factory _WorkHours(
      {required final String start,
      required final String end,
      final String? lunchStart,
      final String? lunchEnd}) = _$WorkHoursImpl;
  const _WorkHours._() : super._();

  factory _WorkHours.fromJson(Map<String, dynamic> json) =
      _$WorkHoursImpl.fromJson;

  @override
  String get start;
  @override
  String get end;
  @override
  String? get lunchStart;
  @override
  String? get lunchEnd;
  @override
  @JsonKey(ignore: true)
  _$$WorkHoursImplCopyWith<_$WorkHoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkWeekday _$WorkWeekdayFromJson(Map<String, dynamic> json) {
  return _WorkWeekday.fromJson(json);
}

/// @nodoc
mixin _$WorkWeekday {
  /// `DateTime.weekday`: 1 is Monday, 7 is Sunday.
  int get weekday => throw _privateConstructorUsedError;

  /// Whether this weekday is a working day at all. Its [hours] are kept when
  /// it is not, so switching it back on does not lose them.
  bool get working => throw _privateConstructorUsedError;
  WorkHours get hours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkWeekdayCopyWith<WorkWeekday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkWeekdayCopyWith<$Res> {
  factory $WorkWeekdayCopyWith(
          WorkWeekday value, $Res Function(WorkWeekday) then) =
      _$WorkWeekdayCopyWithImpl<$Res, WorkWeekday>;
  @useResult
  $Res call({int weekday, bool working, WorkHours hours});

  $WorkHoursCopyWith<$Res> get hours;
}

/// @nodoc
class _$WorkWeekdayCopyWithImpl<$Res, $Val extends WorkWeekday>
    implements $WorkWeekdayCopyWith<$Res> {
  _$WorkWeekdayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekday = null,
    Object? working = null,
    Object? hours = null,
  }) {
    return _then(_value.copyWith(
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as int,
      working: null == working
          ? _value.working
          : working // ignore: cast_nullable_to_non_nullable
              as bool,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as WorkHours,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkHoursCopyWith<$Res> get hours {
    return $WorkHoursCopyWith<$Res>(_value.hours, (value) {
      return _then(_value.copyWith(hours: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkWeekdayImplCopyWith<$Res>
    implements $WorkWeekdayCopyWith<$Res> {
  factory _$$WorkWeekdayImplCopyWith(
          _$WorkWeekdayImpl value, $Res Function(_$WorkWeekdayImpl) then) =
      __$$WorkWeekdayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int weekday, bool working, WorkHours hours});

  @override
  $WorkHoursCopyWith<$Res> get hours;
}

/// @nodoc
class __$$WorkWeekdayImplCopyWithImpl<$Res>
    extends _$WorkWeekdayCopyWithImpl<$Res, _$WorkWeekdayImpl>
    implements _$$WorkWeekdayImplCopyWith<$Res> {
  __$$WorkWeekdayImplCopyWithImpl(
      _$WorkWeekdayImpl _value, $Res Function(_$WorkWeekdayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekday = null,
    Object? working = null,
    Object? hours = null,
  }) {
    return _then(_$WorkWeekdayImpl(
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as int,
      working: null == working
          ? _value.working
          : working // ignore: cast_nullable_to_non_nullable
              as bool,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as WorkHours,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkWeekdayImpl implements _WorkWeekday {
  const _$WorkWeekdayImpl(
      {required this.weekday, required this.working, required this.hours});

  factory _$WorkWeekdayImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkWeekdayImplFromJson(json);

  /// `DateTime.weekday`: 1 is Monday, 7 is Sunday.
  @override
  final int weekday;

  /// Whether this weekday is a working day at all. Its [hours] are kept when
  /// it is not, so switching it back on does not lose them.
  @override
  final bool working;
  @override
  final WorkHours hours;

  @override
  String toString() {
    return 'WorkWeekday(weekday: $weekday, working: $working, hours: $hours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkWeekdayImpl &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.working, working) || other.working == working) &&
            (identical(other.hours, hours) || other.hours == hours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, weekday, working, hours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkWeekdayImplCopyWith<_$WorkWeekdayImpl> get copyWith =>
      __$$WorkWeekdayImplCopyWithImpl<_$WorkWeekdayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkWeekdayImplToJson(
      this,
    );
  }
}

abstract class _WorkWeekday implements WorkWeekday {
  const factory _WorkWeekday(
      {required final int weekday,
      required final bool working,
      required final WorkHours hours}) = _$WorkWeekdayImpl;

  factory _WorkWeekday.fromJson(Map<String, dynamic> json) =
      _$WorkWeekdayImpl.fromJson;

  @override

  /// `DateTime.weekday`: 1 is Monday, 7 is Sunday.
  int get weekday;
  @override

  /// Whether this weekday is a working day at all. Its [hours] are kept when
  /// it is not, so switching it back on does not lose them.
  bool get working;
  @override
  WorkHours get hours;
  @override
  @JsonKey(ignore: true)
  _$$WorkWeekdayImplCopyWith<_$WorkWeekdayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CalendarException _$CalendarExceptionFromJson(Map<String, dynamic> json) {
  return _CalendarException.fromJson(json);
}

/// @nodoc
mixin _$CalendarException {
  /// `yyyy-MM-dd`.
  String get date => throw _privateConstructorUsedError;

  /// True: this date is worked, whatever its weekday says. False: it is a
  /// day off.
  bool get working => throw _privateConstructorUsedError;

  /// What it is for ("National Day", "Make-up for 2 Jan"), shown next to it.
  String get note => throw _privateConstructorUsedError;

  /// Hours for a worked date. Null uses the weekday's own hours, which for a
  /// Saturday make-up day is whatever Saturday is set to.
  WorkHours? get hours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarExceptionCopyWith<CalendarException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarExceptionCopyWith<$Res> {
  factory $CalendarExceptionCopyWith(
          CalendarException value, $Res Function(CalendarException) then) =
      _$CalendarExceptionCopyWithImpl<$Res, CalendarException>;
  @useResult
  $Res call({String date, bool working, String note, WorkHours? hours});

  $WorkHoursCopyWith<$Res>? get hours;
}

/// @nodoc
class _$CalendarExceptionCopyWithImpl<$Res, $Val extends CalendarException>
    implements $CalendarExceptionCopyWith<$Res> {
  _$CalendarExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? working = null,
    Object? note = null,
    Object? hours = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      working: null == working
          ? _value.working
          : working // ignore: cast_nullable_to_non_nullable
              as bool,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as WorkHours?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkHoursCopyWith<$Res>? get hours {
    if (_value.hours == null) {
      return null;
    }

    return $WorkHoursCopyWith<$Res>(_value.hours!, (value) {
      return _then(_value.copyWith(hours: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalendarExceptionImplCopyWith<$Res>
    implements $CalendarExceptionCopyWith<$Res> {
  factory _$$CalendarExceptionImplCopyWith(_$CalendarExceptionImpl value,
          $Res Function(_$CalendarExceptionImpl) then) =
      __$$CalendarExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, bool working, String note, WorkHours? hours});

  @override
  $WorkHoursCopyWith<$Res>? get hours;
}

/// @nodoc
class __$$CalendarExceptionImplCopyWithImpl<$Res>
    extends _$CalendarExceptionCopyWithImpl<$Res, _$CalendarExceptionImpl>
    implements _$$CalendarExceptionImplCopyWith<$Res> {
  __$$CalendarExceptionImplCopyWithImpl(_$CalendarExceptionImpl _value,
      $Res Function(_$CalendarExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? working = null,
    Object? note = null,
    Object? hours = freezed,
  }) {
    return _then(_$CalendarExceptionImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      working: null == working
          ? _value.working
          : working // ignore: cast_nullable_to_non_nullable
              as bool,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as WorkHours?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarExceptionImpl implements _CalendarException {
  const _$CalendarExceptionImpl(
      {required this.date, required this.working, this.note = '', this.hours});

  factory _$CalendarExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarExceptionImplFromJson(json);

  /// `yyyy-MM-dd`.
  @override
  final String date;

  /// True: this date is worked, whatever its weekday says. False: it is a
  /// day off.
  @override
  final bool working;

  /// What it is for ("National Day", "Make-up for 2 Jan"), shown next to it.
  @override
  @JsonKey()
  final String note;

  /// Hours for a worked date. Null uses the weekday's own hours, which for a
  /// Saturday make-up day is whatever Saturday is set to.
  @override
  final WorkHours? hours;

  @override
  String toString() {
    return 'CalendarException(date: $date, working: $working, note: $note, hours: $hours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarExceptionImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.working, working) || other.working == working) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.hours, hours) || other.hours == hours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, working, note, hours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarExceptionImplCopyWith<_$CalendarExceptionImpl> get copyWith =>
      __$$CalendarExceptionImplCopyWithImpl<_$CalendarExceptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarExceptionImplToJson(
      this,
    );
  }
}

abstract class _CalendarException implements CalendarException {
  const factory _CalendarException(
      {required final String date,
      required final bool working,
      final String note,
      final WorkHours? hours}) = _$CalendarExceptionImpl;

  factory _CalendarException.fromJson(Map<String, dynamic> json) =
      _$CalendarExceptionImpl.fromJson;

  @override

  /// `yyyy-MM-dd`.
  String get date;
  @override

  /// True: this date is worked, whatever its weekday says. False: it is a
  /// day off.
  bool get working;
  @override

  /// What it is for ("National Day", "Make-up for 2 Jan"), shown next to it.
  String get note;
  @override

  /// Hours for a worked date. Null uses the weekday's own hours, which for a
  /// Saturday make-up day is whatever Saturday is set to.
  WorkHours? get hours;
  @override
  @JsonKey(ignore: true)
  _$$CalendarExceptionImplCopyWith<_$CalendarExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkCalendar _$WorkCalendarFromJson(Map<String, dynamic> json) {
  return _WorkCalendar.fromJson(json);
}

/// @nodoc
mixin _$WorkCalendar {
  List<WorkWeekday> get weekdays => throw _privateConstructorUsedError;
  List<CalendarException> get exceptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkCalendarCopyWith<WorkCalendar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkCalendarCopyWith<$Res> {
  factory $WorkCalendarCopyWith(
          WorkCalendar value, $Res Function(WorkCalendar) then) =
      _$WorkCalendarCopyWithImpl<$Res, WorkCalendar>;
  @useResult
  $Res call({List<WorkWeekday> weekdays, List<CalendarException> exceptions});
}

/// @nodoc
class _$WorkCalendarCopyWithImpl<$Res, $Val extends WorkCalendar>
    implements $WorkCalendarCopyWith<$Res> {
  _$WorkCalendarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekdays = null,
    Object? exceptions = null,
  }) {
    return _then(_value.copyWith(
      weekdays: null == weekdays
          ? _value.weekdays
          : weekdays // ignore: cast_nullable_to_non_nullable
              as List<WorkWeekday>,
      exceptions: null == exceptions
          ? _value.exceptions
          : exceptions // ignore: cast_nullable_to_non_nullable
              as List<CalendarException>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkCalendarImplCopyWith<$Res>
    implements $WorkCalendarCopyWith<$Res> {
  factory _$$WorkCalendarImplCopyWith(
          _$WorkCalendarImpl value, $Res Function(_$WorkCalendarImpl) then) =
      __$$WorkCalendarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WorkWeekday> weekdays, List<CalendarException> exceptions});
}

/// @nodoc
class __$$WorkCalendarImplCopyWithImpl<$Res>
    extends _$WorkCalendarCopyWithImpl<$Res, _$WorkCalendarImpl>
    implements _$$WorkCalendarImplCopyWith<$Res> {
  __$$WorkCalendarImplCopyWithImpl(
      _$WorkCalendarImpl _value, $Res Function(_$WorkCalendarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekdays = null,
    Object? exceptions = null,
  }) {
    return _then(_$WorkCalendarImpl(
      weekdays: null == weekdays
          ? _value._weekdays
          : weekdays // ignore: cast_nullable_to_non_nullable
              as List<WorkWeekday>,
      exceptions: null == exceptions
          ? _value._exceptions
          : exceptions // ignore: cast_nullable_to_non_nullable
              as List<CalendarException>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkCalendarImpl extends _WorkCalendar {
  const _$WorkCalendarImpl(
      {final List<WorkWeekday> weekdays = const <WorkWeekday>[],
      final List<CalendarException> exceptions = const <CalendarException>[]})
      : _weekdays = weekdays,
        _exceptions = exceptions,
        super._();

  factory _$WorkCalendarImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkCalendarImplFromJson(json);

  final List<WorkWeekday> _weekdays;
  @override
  @JsonKey()
  List<WorkWeekday> get weekdays {
    if (_weekdays is EqualUnmodifiableListView) return _weekdays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekdays);
  }

  final List<CalendarException> _exceptions;
  @override
  @JsonKey()
  List<CalendarException> get exceptions {
    if (_exceptions is EqualUnmodifiableListView) return _exceptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exceptions);
  }

  @override
  String toString() {
    return 'WorkCalendar(weekdays: $weekdays, exceptions: $exceptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkCalendarImpl &&
            const DeepCollectionEquality().equals(other._weekdays, _weekdays) &&
            const DeepCollectionEquality()
                .equals(other._exceptions, _exceptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_weekdays),
      const DeepCollectionEquality().hash(_exceptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkCalendarImplCopyWith<_$WorkCalendarImpl> get copyWith =>
      __$$WorkCalendarImplCopyWithImpl<_$WorkCalendarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkCalendarImplToJson(
      this,
    );
  }
}

abstract class _WorkCalendar extends WorkCalendar {
  const factory _WorkCalendar(
      {final List<WorkWeekday> weekdays,
      final List<CalendarException> exceptions}) = _$WorkCalendarImpl;
  const _WorkCalendar._() : super._();

  factory _WorkCalendar.fromJson(Map<String, dynamic> json) =
      _$WorkCalendarImpl.fromJson;

  @override
  List<WorkWeekday> get weekdays;
  @override
  List<CalendarException> get exceptions;
  @override
  @JsonKey(ignore: true)
  _$$WorkCalendarImplCopyWith<_$WorkCalendarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
