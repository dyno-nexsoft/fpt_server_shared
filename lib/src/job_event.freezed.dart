// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobEvent _$JobEventFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'queued':
      return JobQueuedEvent.fromJson(json);
    case 'started':
      return JobStartedEvent.fromJson(json);
    case 'promoted':
      return JobPromotedEvent.fromJson(json);
    case 'status':
      return JobStatusEvent.fromJson(json);
    case 'log':
      return JobLogEvent.fromJson(json);
    case 'error':
      return JobErrorEvent.fromJson(json);
    case 'finished':
      return JobFinishedEvent.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'JobEvent', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$JobEvent {
  int get seq => throw _privateConstructorUsedError;
  DateTime get at => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int seq, DateTime at, int position) queued,
    required TResult Function(int seq, DateTime at, bool immediate) started,
    required TResult Function(int seq, DateTime at) promoted,
    required TResult Function(int seq, DateTime at, String line) status,
    required TResult Function(int seq, DateTime at, String chunk) log,
    required TResult Function(int seq, DateTime at, String message) error,
    required TResult Function(int seq, DateTime at,
            @JobStateConverter() JobState state, int? exitCode)
        finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int seq, DateTime at, int position)? queued,
    TResult? Function(int seq, DateTime at, bool immediate)? started,
    TResult? Function(int seq, DateTime at)? promoted,
    TResult? Function(int seq, DateTime at, String line)? status,
    TResult? Function(int seq, DateTime at, String chunk)? log,
    TResult? Function(int seq, DateTime at, String message)? error,
    TResult? Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int seq, DateTime at, int position)? queued,
    TResult Function(int seq, DateTime at, bool immediate)? started,
    TResult Function(int seq, DateTime at)? promoted,
    TResult Function(int seq, DateTime at, String line)? status,
    TResult Function(int seq, DateTime at, String chunk)? log,
    TResult Function(int seq, DateTime at, String message)? error,
    TResult Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobQueuedEvent value) queued,
    required TResult Function(JobStartedEvent value) started,
    required TResult Function(JobPromotedEvent value) promoted,
    required TResult Function(JobStatusEvent value) status,
    required TResult Function(JobLogEvent value) log,
    required TResult Function(JobErrorEvent value) error,
    required TResult Function(JobFinishedEvent value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobQueuedEvent value)? queued,
    TResult? Function(JobStartedEvent value)? started,
    TResult? Function(JobPromotedEvent value)? promoted,
    TResult? Function(JobStatusEvent value)? status,
    TResult? Function(JobLogEvent value)? log,
    TResult? Function(JobErrorEvent value)? error,
    TResult? Function(JobFinishedEvent value)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobQueuedEvent value)? queued,
    TResult Function(JobStartedEvent value)? started,
    TResult Function(JobPromotedEvent value)? promoted,
    TResult Function(JobStatusEvent value)? status,
    TResult Function(JobLogEvent value)? log,
    TResult Function(JobErrorEvent value)? error,
    TResult Function(JobFinishedEvent value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobEventCopyWith<JobEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobEventCopyWith<$Res> {
  factory $JobEventCopyWith(JobEvent value, $Res Function(JobEvent) then) =
      _$JobEventCopyWithImpl<$Res, JobEvent>;
  @useResult
  $Res call({int seq, DateTime at});
}

/// @nodoc
class _$JobEventCopyWithImpl<$Res, $Val extends JobEvent>
    implements $JobEventCopyWith<$Res> {
  _$JobEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? at = null,
  }) {
    return _then(_value.copyWith(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      at: null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobQueuedEventImplCopyWith<$Res>
    implements $JobEventCopyWith<$Res> {
  factory _$$JobQueuedEventImplCopyWith(_$JobQueuedEventImpl value,
          $Res Function(_$JobQueuedEventImpl) then) =
      __$$JobQueuedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seq, DateTime at, int position});
}

/// @nodoc
class __$$JobQueuedEventImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$JobQueuedEventImpl>
    implements _$$JobQueuedEventImplCopyWith<$Res> {
  __$$JobQueuedEventImplCopyWithImpl(
      _$JobQueuedEventImpl _value, $Res Function(_$JobQueuedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? at = null,
    Object? position = null,
  }) {
    return _then(_$JobQueuedEventImpl(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      at: null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobQueuedEventImpl implements JobQueuedEvent {
  const _$JobQueuedEventImpl(
      {required this.seq,
      required this.at,
      required this.position,
      final String? $type})
      : $type = $type ?? 'queued';

  factory _$JobQueuedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobQueuedEventImplFromJson(json);

  @override
  final int seq;
  @override
  final DateTime at;
  @override
  final int position;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'JobEvent.queued(seq: $seq, at: $at, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobQueuedEventImpl &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, seq, at, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobQueuedEventImplCopyWith<_$JobQueuedEventImpl> get copyWith =>
      __$$JobQueuedEventImplCopyWithImpl<_$JobQueuedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int seq, DateTime at, int position) queued,
    required TResult Function(int seq, DateTime at, bool immediate) started,
    required TResult Function(int seq, DateTime at) promoted,
    required TResult Function(int seq, DateTime at, String line) status,
    required TResult Function(int seq, DateTime at, String chunk) log,
    required TResult Function(int seq, DateTime at, String message) error,
    required TResult Function(int seq, DateTime at,
            @JobStateConverter() JobState state, int? exitCode)
        finished,
  }) {
    return queued(seq, at, position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int seq, DateTime at, int position)? queued,
    TResult? Function(int seq, DateTime at, bool immediate)? started,
    TResult? Function(int seq, DateTime at)? promoted,
    TResult? Function(int seq, DateTime at, String line)? status,
    TResult? Function(int seq, DateTime at, String chunk)? log,
    TResult? Function(int seq, DateTime at, String message)? error,
    TResult? Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
  }) {
    return queued?.call(seq, at, position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int seq, DateTime at, int position)? queued,
    TResult Function(int seq, DateTime at, bool immediate)? started,
    TResult Function(int seq, DateTime at)? promoted,
    TResult Function(int seq, DateTime at, String line)? status,
    TResult Function(int seq, DateTime at, String chunk)? log,
    TResult Function(int seq, DateTime at, String message)? error,
    TResult Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
    required TResult orElse(),
  }) {
    if (queued != null) {
      return queued(seq, at, position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobQueuedEvent value) queued,
    required TResult Function(JobStartedEvent value) started,
    required TResult Function(JobPromotedEvent value) promoted,
    required TResult Function(JobStatusEvent value) status,
    required TResult Function(JobLogEvent value) log,
    required TResult Function(JobErrorEvent value) error,
    required TResult Function(JobFinishedEvent value) finished,
  }) {
    return queued(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobQueuedEvent value)? queued,
    TResult? Function(JobStartedEvent value)? started,
    TResult? Function(JobPromotedEvent value)? promoted,
    TResult? Function(JobStatusEvent value)? status,
    TResult? Function(JobLogEvent value)? log,
    TResult? Function(JobErrorEvent value)? error,
    TResult? Function(JobFinishedEvent value)? finished,
  }) {
    return queued?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobQueuedEvent value)? queued,
    TResult Function(JobStartedEvent value)? started,
    TResult Function(JobPromotedEvent value)? promoted,
    TResult Function(JobStatusEvent value)? status,
    TResult Function(JobLogEvent value)? log,
    TResult Function(JobErrorEvent value)? error,
    TResult Function(JobFinishedEvent value)? finished,
    required TResult orElse(),
  }) {
    if (queued != null) {
      return queued(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$JobQueuedEventImplToJson(
      this,
    );
  }
}

abstract class JobQueuedEvent implements JobEvent {
  const factory JobQueuedEvent(
      {required final int seq,
      required final DateTime at,
      required final int position}) = _$JobQueuedEventImpl;

  factory JobQueuedEvent.fromJson(Map<String, dynamic> json) =
      _$JobQueuedEventImpl.fromJson;

  @override
  int get seq;
  @override
  DateTime get at;
  int get position;
  @override
  @JsonKey(ignore: true)
  _$$JobQueuedEventImplCopyWith<_$JobQueuedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JobStartedEventImplCopyWith<$Res>
    implements $JobEventCopyWith<$Res> {
  factory _$$JobStartedEventImplCopyWith(_$JobStartedEventImpl value,
          $Res Function(_$JobStartedEventImpl) then) =
      __$$JobStartedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seq, DateTime at, bool immediate});
}

/// @nodoc
class __$$JobStartedEventImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$JobStartedEventImpl>
    implements _$$JobStartedEventImplCopyWith<$Res> {
  __$$JobStartedEventImplCopyWithImpl(
      _$JobStartedEventImpl _value, $Res Function(_$JobStartedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? at = null,
    Object? immediate = null,
  }) {
    return _then(_$JobStartedEventImpl(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      at: null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      immediate: null == immediate
          ? _value.immediate
          : immediate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobStartedEventImpl implements JobStartedEvent {
  const _$JobStartedEventImpl(
      {required this.seq,
      required this.at,
      required this.immediate,
      final String? $type})
      : $type = $type ?? 'started';

  factory _$JobStartedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobStartedEventImplFromJson(json);

  @override
  final int seq;
  @override
  final DateTime at;
  @override
  final bool immediate;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'JobEvent.started(seq: $seq, at: $at, immediate: $immediate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobStartedEventImpl &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.immediate, immediate) ||
                other.immediate == immediate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, seq, at, immediate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobStartedEventImplCopyWith<_$JobStartedEventImpl> get copyWith =>
      __$$JobStartedEventImplCopyWithImpl<_$JobStartedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int seq, DateTime at, int position) queued,
    required TResult Function(int seq, DateTime at, bool immediate) started,
    required TResult Function(int seq, DateTime at) promoted,
    required TResult Function(int seq, DateTime at, String line) status,
    required TResult Function(int seq, DateTime at, String chunk) log,
    required TResult Function(int seq, DateTime at, String message) error,
    required TResult Function(int seq, DateTime at,
            @JobStateConverter() JobState state, int? exitCode)
        finished,
  }) {
    return started(seq, at, immediate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int seq, DateTime at, int position)? queued,
    TResult? Function(int seq, DateTime at, bool immediate)? started,
    TResult? Function(int seq, DateTime at)? promoted,
    TResult? Function(int seq, DateTime at, String line)? status,
    TResult? Function(int seq, DateTime at, String chunk)? log,
    TResult? Function(int seq, DateTime at, String message)? error,
    TResult? Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
  }) {
    return started?.call(seq, at, immediate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int seq, DateTime at, int position)? queued,
    TResult Function(int seq, DateTime at, bool immediate)? started,
    TResult Function(int seq, DateTime at)? promoted,
    TResult Function(int seq, DateTime at, String line)? status,
    TResult Function(int seq, DateTime at, String chunk)? log,
    TResult Function(int seq, DateTime at, String message)? error,
    TResult Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(seq, at, immediate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobQueuedEvent value) queued,
    required TResult Function(JobStartedEvent value) started,
    required TResult Function(JobPromotedEvent value) promoted,
    required TResult Function(JobStatusEvent value) status,
    required TResult Function(JobLogEvent value) log,
    required TResult Function(JobErrorEvent value) error,
    required TResult Function(JobFinishedEvent value) finished,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobQueuedEvent value)? queued,
    TResult? Function(JobStartedEvent value)? started,
    TResult? Function(JobPromotedEvent value)? promoted,
    TResult? Function(JobStatusEvent value)? status,
    TResult? Function(JobLogEvent value)? log,
    TResult? Function(JobErrorEvent value)? error,
    TResult? Function(JobFinishedEvent value)? finished,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobQueuedEvent value)? queued,
    TResult Function(JobStartedEvent value)? started,
    TResult Function(JobPromotedEvent value)? promoted,
    TResult Function(JobStatusEvent value)? status,
    TResult Function(JobLogEvent value)? log,
    TResult Function(JobErrorEvent value)? error,
    TResult Function(JobFinishedEvent value)? finished,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$JobStartedEventImplToJson(
      this,
    );
  }
}

abstract class JobStartedEvent implements JobEvent {
  const factory JobStartedEvent(
      {required final int seq,
      required final DateTime at,
      required final bool immediate}) = _$JobStartedEventImpl;

  factory JobStartedEvent.fromJson(Map<String, dynamic> json) =
      _$JobStartedEventImpl.fromJson;

  @override
  int get seq;
  @override
  DateTime get at;
  bool get immediate;
  @override
  @JsonKey(ignore: true)
  _$$JobStartedEventImplCopyWith<_$JobStartedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JobPromotedEventImplCopyWith<$Res>
    implements $JobEventCopyWith<$Res> {
  factory _$$JobPromotedEventImplCopyWith(_$JobPromotedEventImpl value,
          $Res Function(_$JobPromotedEventImpl) then) =
      __$$JobPromotedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seq, DateTime at});
}

/// @nodoc
class __$$JobPromotedEventImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$JobPromotedEventImpl>
    implements _$$JobPromotedEventImplCopyWith<$Res> {
  __$$JobPromotedEventImplCopyWithImpl(_$JobPromotedEventImpl _value,
      $Res Function(_$JobPromotedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? at = null,
  }) {
    return _then(_$JobPromotedEventImpl(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      at: null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobPromotedEventImpl implements JobPromotedEvent {
  const _$JobPromotedEventImpl(
      {required this.seq, required this.at, final String? $type})
      : $type = $type ?? 'promoted';

  factory _$JobPromotedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobPromotedEventImplFromJson(json);

  @override
  final int seq;
  @override
  final DateTime at;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'JobEvent.promoted(seq: $seq, at: $at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPromotedEventImpl &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.at, at) || other.at == at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, seq, at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPromotedEventImplCopyWith<_$JobPromotedEventImpl> get copyWith =>
      __$$JobPromotedEventImplCopyWithImpl<_$JobPromotedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int seq, DateTime at, int position) queued,
    required TResult Function(int seq, DateTime at, bool immediate) started,
    required TResult Function(int seq, DateTime at) promoted,
    required TResult Function(int seq, DateTime at, String line) status,
    required TResult Function(int seq, DateTime at, String chunk) log,
    required TResult Function(int seq, DateTime at, String message) error,
    required TResult Function(int seq, DateTime at,
            @JobStateConverter() JobState state, int? exitCode)
        finished,
  }) {
    return promoted(seq, at);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int seq, DateTime at, int position)? queued,
    TResult? Function(int seq, DateTime at, bool immediate)? started,
    TResult? Function(int seq, DateTime at)? promoted,
    TResult? Function(int seq, DateTime at, String line)? status,
    TResult? Function(int seq, DateTime at, String chunk)? log,
    TResult? Function(int seq, DateTime at, String message)? error,
    TResult? Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
  }) {
    return promoted?.call(seq, at);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int seq, DateTime at, int position)? queued,
    TResult Function(int seq, DateTime at, bool immediate)? started,
    TResult Function(int seq, DateTime at)? promoted,
    TResult Function(int seq, DateTime at, String line)? status,
    TResult Function(int seq, DateTime at, String chunk)? log,
    TResult Function(int seq, DateTime at, String message)? error,
    TResult Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
    required TResult orElse(),
  }) {
    if (promoted != null) {
      return promoted(seq, at);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobQueuedEvent value) queued,
    required TResult Function(JobStartedEvent value) started,
    required TResult Function(JobPromotedEvent value) promoted,
    required TResult Function(JobStatusEvent value) status,
    required TResult Function(JobLogEvent value) log,
    required TResult Function(JobErrorEvent value) error,
    required TResult Function(JobFinishedEvent value) finished,
  }) {
    return promoted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobQueuedEvent value)? queued,
    TResult? Function(JobStartedEvent value)? started,
    TResult? Function(JobPromotedEvent value)? promoted,
    TResult? Function(JobStatusEvent value)? status,
    TResult? Function(JobLogEvent value)? log,
    TResult? Function(JobErrorEvent value)? error,
    TResult? Function(JobFinishedEvent value)? finished,
  }) {
    return promoted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobQueuedEvent value)? queued,
    TResult Function(JobStartedEvent value)? started,
    TResult Function(JobPromotedEvent value)? promoted,
    TResult Function(JobStatusEvent value)? status,
    TResult Function(JobLogEvent value)? log,
    TResult Function(JobErrorEvent value)? error,
    TResult Function(JobFinishedEvent value)? finished,
    required TResult orElse(),
  }) {
    if (promoted != null) {
      return promoted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$JobPromotedEventImplToJson(
      this,
    );
  }
}

abstract class JobPromotedEvent implements JobEvent {
  const factory JobPromotedEvent(
      {required final int seq,
      required final DateTime at}) = _$JobPromotedEventImpl;

  factory JobPromotedEvent.fromJson(Map<String, dynamic> json) =
      _$JobPromotedEventImpl.fromJson;

  @override
  int get seq;
  @override
  DateTime get at;
  @override
  @JsonKey(ignore: true)
  _$$JobPromotedEventImplCopyWith<_$JobPromotedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JobStatusEventImplCopyWith<$Res>
    implements $JobEventCopyWith<$Res> {
  factory _$$JobStatusEventImplCopyWith(_$JobStatusEventImpl value,
          $Res Function(_$JobStatusEventImpl) then) =
      __$$JobStatusEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seq, DateTime at, String line});
}

/// @nodoc
class __$$JobStatusEventImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$JobStatusEventImpl>
    implements _$$JobStatusEventImplCopyWith<$Res> {
  __$$JobStatusEventImplCopyWithImpl(
      _$JobStatusEventImpl _value, $Res Function(_$JobStatusEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? at = null,
    Object? line = null,
  }) {
    return _then(_$JobStatusEventImpl(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      at: null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobStatusEventImpl implements JobStatusEvent {
  const _$JobStatusEventImpl(
      {required this.seq,
      required this.at,
      required this.line,
      final String? $type})
      : $type = $type ?? 'status';

  factory _$JobStatusEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobStatusEventImplFromJson(json);

  @override
  final int seq;
  @override
  final DateTime at;
  @override
  final String line;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'JobEvent.status(seq: $seq, at: $at, line: $line)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobStatusEventImpl &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.line, line) || other.line == line));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, seq, at, line);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobStatusEventImplCopyWith<_$JobStatusEventImpl> get copyWith =>
      __$$JobStatusEventImplCopyWithImpl<_$JobStatusEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int seq, DateTime at, int position) queued,
    required TResult Function(int seq, DateTime at, bool immediate) started,
    required TResult Function(int seq, DateTime at) promoted,
    required TResult Function(int seq, DateTime at, String line) status,
    required TResult Function(int seq, DateTime at, String chunk) log,
    required TResult Function(int seq, DateTime at, String message) error,
    required TResult Function(int seq, DateTime at,
            @JobStateConverter() JobState state, int? exitCode)
        finished,
  }) {
    return status(seq, at, line);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int seq, DateTime at, int position)? queued,
    TResult? Function(int seq, DateTime at, bool immediate)? started,
    TResult? Function(int seq, DateTime at)? promoted,
    TResult? Function(int seq, DateTime at, String line)? status,
    TResult? Function(int seq, DateTime at, String chunk)? log,
    TResult? Function(int seq, DateTime at, String message)? error,
    TResult? Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
  }) {
    return status?.call(seq, at, line);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int seq, DateTime at, int position)? queued,
    TResult Function(int seq, DateTime at, bool immediate)? started,
    TResult Function(int seq, DateTime at)? promoted,
    TResult Function(int seq, DateTime at, String line)? status,
    TResult Function(int seq, DateTime at, String chunk)? log,
    TResult Function(int seq, DateTime at, String message)? error,
    TResult Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(seq, at, line);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobQueuedEvent value) queued,
    required TResult Function(JobStartedEvent value) started,
    required TResult Function(JobPromotedEvent value) promoted,
    required TResult Function(JobStatusEvent value) status,
    required TResult Function(JobLogEvent value) log,
    required TResult Function(JobErrorEvent value) error,
    required TResult Function(JobFinishedEvent value) finished,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobQueuedEvent value)? queued,
    TResult? Function(JobStartedEvent value)? started,
    TResult? Function(JobPromotedEvent value)? promoted,
    TResult? Function(JobStatusEvent value)? status,
    TResult? Function(JobLogEvent value)? log,
    TResult? Function(JobErrorEvent value)? error,
    TResult? Function(JobFinishedEvent value)? finished,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobQueuedEvent value)? queued,
    TResult Function(JobStartedEvent value)? started,
    TResult Function(JobPromotedEvent value)? promoted,
    TResult Function(JobStatusEvent value)? status,
    TResult Function(JobLogEvent value)? log,
    TResult Function(JobErrorEvent value)? error,
    TResult Function(JobFinishedEvent value)? finished,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$JobStatusEventImplToJson(
      this,
    );
  }
}

abstract class JobStatusEvent implements JobEvent {
  const factory JobStatusEvent(
      {required final int seq,
      required final DateTime at,
      required final String line}) = _$JobStatusEventImpl;

  factory JobStatusEvent.fromJson(Map<String, dynamic> json) =
      _$JobStatusEventImpl.fromJson;

  @override
  int get seq;
  @override
  DateTime get at;
  String get line;
  @override
  @JsonKey(ignore: true)
  _$$JobStatusEventImplCopyWith<_$JobStatusEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JobLogEventImplCopyWith<$Res>
    implements $JobEventCopyWith<$Res> {
  factory _$$JobLogEventImplCopyWith(
          _$JobLogEventImpl value, $Res Function(_$JobLogEventImpl) then) =
      __$$JobLogEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seq, DateTime at, String chunk});
}

/// @nodoc
class __$$JobLogEventImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$JobLogEventImpl>
    implements _$$JobLogEventImplCopyWith<$Res> {
  __$$JobLogEventImplCopyWithImpl(
      _$JobLogEventImpl _value, $Res Function(_$JobLogEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? at = null,
    Object? chunk = null,
  }) {
    return _then(_$JobLogEventImpl(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      at: null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      chunk: null == chunk
          ? _value.chunk
          : chunk // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobLogEventImpl implements JobLogEvent {
  const _$JobLogEventImpl(
      {required this.seq,
      required this.at,
      required this.chunk,
      final String? $type})
      : $type = $type ?? 'log';

  factory _$JobLogEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobLogEventImplFromJson(json);

  @override
  final int seq;
  @override
  final DateTime at;
  @override
  final String chunk;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'JobEvent.log(seq: $seq, at: $at, chunk: $chunk)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobLogEventImpl &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.chunk, chunk) || other.chunk == chunk));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, seq, at, chunk);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobLogEventImplCopyWith<_$JobLogEventImpl> get copyWith =>
      __$$JobLogEventImplCopyWithImpl<_$JobLogEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int seq, DateTime at, int position) queued,
    required TResult Function(int seq, DateTime at, bool immediate) started,
    required TResult Function(int seq, DateTime at) promoted,
    required TResult Function(int seq, DateTime at, String line) status,
    required TResult Function(int seq, DateTime at, String chunk) log,
    required TResult Function(int seq, DateTime at, String message) error,
    required TResult Function(int seq, DateTime at,
            @JobStateConverter() JobState state, int? exitCode)
        finished,
  }) {
    return log(seq, at, chunk);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int seq, DateTime at, int position)? queued,
    TResult? Function(int seq, DateTime at, bool immediate)? started,
    TResult? Function(int seq, DateTime at)? promoted,
    TResult? Function(int seq, DateTime at, String line)? status,
    TResult? Function(int seq, DateTime at, String chunk)? log,
    TResult? Function(int seq, DateTime at, String message)? error,
    TResult? Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
  }) {
    return log?.call(seq, at, chunk);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int seq, DateTime at, int position)? queued,
    TResult Function(int seq, DateTime at, bool immediate)? started,
    TResult Function(int seq, DateTime at)? promoted,
    TResult Function(int seq, DateTime at, String line)? status,
    TResult Function(int seq, DateTime at, String chunk)? log,
    TResult Function(int seq, DateTime at, String message)? error,
    TResult Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
    required TResult orElse(),
  }) {
    if (log != null) {
      return log(seq, at, chunk);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobQueuedEvent value) queued,
    required TResult Function(JobStartedEvent value) started,
    required TResult Function(JobPromotedEvent value) promoted,
    required TResult Function(JobStatusEvent value) status,
    required TResult Function(JobLogEvent value) log,
    required TResult Function(JobErrorEvent value) error,
    required TResult Function(JobFinishedEvent value) finished,
  }) {
    return log(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobQueuedEvent value)? queued,
    TResult? Function(JobStartedEvent value)? started,
    TResult? Function(JobPromotedEvent value)? promoted,
    TResult? Function(JobStatusEvent value)? status,
    TResult? Function(JobLogEvent value)? log,
    TResult? Function(JobErrorEvent value)? error,
    TResult? Function(JobFinishedEvent value)? finished,
  }) {
    return log?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobQueuedEvent value)? queued,
    TResult Function(JobStartedEvent value)? started,
    TResult Function(JobPromotedEvent value)? promoted,
    TResult Function(JobStatusEvent value)? status,
    TResult Function(JobLogEvent value)? log,
    TResult Function(JobErrorEvent value)? error,
    TResult Function(JobFinishedEvent value)? finished,
    required TResult orElse(),
  }) {
    if (log != null) {
      return log(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$JobLogEventImplToJson(
      this,
    );
  }
}

abstract class JobLogEvent implements JobEvent {
  const factory JobLogEvent(
      {required final int seq,
      required final DateTime at,
      required final String chunk}) = _$JobLogEventImpl;

  factory JobLogEvent.fromJson(Map<String, dynamic> json) =
      _$JobLogEventImpl.fromJson;

  @override
  int get seq;
  @override
  DateTime get at;
  String get chunk;
  @override
  @JsonKey(ignore: true)
  _$$JobLogEventImplCopyWith<_$JobLogEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JobErrorEventImplCopyWith<$Res>
    implements $JobEventCopyWith<$Res> {
  factory _$$JobErrorEventImplCopyWith(
          _$JobErrorEventImpl value, $Res Function(_$JobErrorEventImpl) then) =
      __$$JobErrorEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seq, DateTime at, String message});
}

/// @nodoc
class __$$JobErrorEventImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$JobErrorEventImpl>
    implements _$$JobErrorEventImplCopyWith<$Res> {
  __$$JobErrorEventImplCopyWithImpl(
      _$JobErrorEventImpl _value, $Res Function(_$JobErrorEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? at = null,
    Object? message = null,
  }) {
    return _then(_$JobErrorEventImpl(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      at: null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobErrorEventImpl implements JobErrorEvent {
  const _$JobErrorEventImpl(
      {required this.seq,
      required this.at,
      required this.message,
      final String? $type})
      : $type = $type ?? 'error';

  factory _$JobErrorEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobErrorEventImplFromJson(json);

  @override
  final int seq;
  @override
  final DateTime at;
  @override
  final String message;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'JobEvent.error(seq: $seq, at: $at, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobErrorEventImpl &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, seq, at, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobErrorEventImplCopyWith<_$JobErrorEventImpl> get copyWith =>
      __$$JobErrorEventImplCopyWithImpl<_$JobErrorEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int seq, DateTime at, int position) queued,
    required TResult Function(int seq, DateTime at, bool immediate) started,
    required TResult Function(int seq, DateTime at) promoted,
    required TResult Function(int seq, DateTime at, String line) status,
    required TResult Function(int seq, DateTime at, String chunk) log,
    required TResult Function(int seq, DateTime at, String message) error,
    required TResult Function(int seq, DateTime at,
            @JobStateConverter() JobState state, int? exitCode)
        finished,
  }) {
    return error(seq, at, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int seq, DateTime at, int position)? queued,
    TResult? Function(int seq, DateTime at, bool immediate)? started,
    TResult? Function(int seq, DateTime at)? promoted,
    TResult? Function(int seq, DateTime at, String line)? status,
    TResult? Function(int seq, DateTime at, String chunk)? log,
    TResult? Function(int seq, DateTime at, String message)? error,
    TResult? Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
  }) {
    return error?.call(seq, at, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int seq, DateTime at, int position)? queued,
    TResult Function(int seq, DateTime at, bool immediate)? started,
    TResult Function(int seq, DateTime at)? promoted,
    TResult Function(int seq, DateTime at, String line)? status,
    TResult Function(int seq, DateTime at, String chunk)? log,
    TResult Function(int seq, DateTime at, String message)? error,
    TResult Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(seq, at, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobQueuedEvent value) queued,
    required TResult Function(JobStartedEvent value) started,
    required TResult Function(JobPromotedEvent value) promoted,
    required TResult Function(JobStatusEvent value) status,
    required TResult Function(JobLogEvent value) log,
    required TResult Function(JobErrorEvent value) error,
    required TResult Function(JobFinishedEvent value) finished,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobQueuedEvent value)? queued,
    TResult? Function(JobStartedEvent value)? started,
    TResult? Function(JobPromotedEvent value)? promoted,
    TResult? Function(JobStatusEvent value)? status,
    TResult? Function(JobLogEvent value)? log,
    TResult? Function(JobErrorEvent value)? error,
    TResult? Function(JobFinishedEvent value)? finished,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobQueuedEvent value)? queued,
    TResult Function(JobStartedEvent value)? started,
    TResult Function(JobPromotedEvent value)? promoted,
    TResult Function(JobStatusEvent value)? status,
    TResult Function(JobLogEvent value)? log,
    TResult Function(JobErrorEvent value)? error,
    TResult Function(JobFinishedEvent value)? finished,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$JobErrorEventImplToJson(
      this,
    );
  }
}

abstract class JobErrorEvent implements JobEvent {
  const factory JobErrorEvent(
      {required final int seq,
      required final DateTime at,
      required final String message}) = _$JobErrorEventImpl;

  factory JobErrorEvent.fromJson(Map<String, dynamic> json) =
      _$JobErrorEventImpl.fromJson;

  @override
  int get seq;
  @override
  DateTime get at;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$JobErrorEventImplCopyWith<_$JobErrorEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JobFinishedEventImplCopyWith<$Res>
    implements $JobEventCopyWith<$Res> {
  factory _$$JobFinishedEventImplCopyWith(_$JobFinishedEventImpl value,
          $Res Function(_$JobFinishedEventImpl) then) =
      __$$JobFinishedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int seq,
      DateTime at,
      @JobStateConverter() JobState state,
      int? exitCode});
}

/// @nodoc
class __$$JobFinishedEventImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$JobFinishedEventImpl>
    implements _$$JobFinishedEventImplCopyWith<$Res> {
  __$$JobFinishedEventImplCopyWithImpl(_$JobFinishedEventImpl _value,
      $Res Function(_$JobFinishedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? at = null,
    Object? state = null,
    Object? exitCode = freezed,
  }) {
    return _then(_$JobFinishedEventImpl(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      at: null == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as JobState,
      exitCode: freezed == exitCode
          ? _value.exitCode
          : exitCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobFinishedEventImpl implements JobFinishedEvent {
  const _$JobFinishedEventImpl(
      {required this.seq,
      required this.at,
      @JobStateConverter() required this.state,
      this.exitCode,
      final String? $type})
      : $type = $type ?? 'finished';

  factory _$JobFinishedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobFinishedEventImplFromJson(json);

  @override
  final int seq;
  @override
  final DateTime at;
  @override
  @JobStateConverter()
  final JobState state;
  @override
  final int? exitCode;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'JobEvent.finished(seq: $seq, at: $at, state: $state, exitCode: $exitCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobFinishedEventImpl &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.exitCode, exitCode) ||
                other.exitCode == exitCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, seq, at, state, exitCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobFinishedEventImplCopyWith<_$JobFinishedEventImpl> get copyWith =>
      __$$JobFinishedEventImplCopyWithImpl<_$JobFinishedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int seq, DateTime at, int position) queued,
    required TResult Function(int seq, DateTime at, bool immediate) started,
    required TResult Function(int seq, DateTime at) promoted,
    required TResult Function(int seq, DateTime at, String line) status,
    required TResult Function(int seq, DateTime at, String chunk) log,
    required TResult Function(int seq, DateTime at, String message) error,
    required TResult Function(int seq, DateTime at,
            @JobStateConverter() JobState state, int? exitCode)
        finished,
  }) {
    return finished(seq, at, state, exitCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int seq, DateTime at, int position)? queued,
    TResult? Function(int seq, DateTime at, bool immediate)? started,
    TResult? Function(int seq, DateTime at)? promoted,
    TResult? Function(int seq, DateTime at, String line)? status,
    TResult? Function(int seq, DateTime at, String chunk)? log,
    TResult? Function(int seq, DateTime at, String message)? error,
    TResult? Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
  }) {
    return finished?.call(seq, at, state, exitCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int seq, DateTime at, int position)? queued,
    TResult Function(int seq, DateTime at, bool immediate)? started,
    TResult Function(int seq, DateTime at)? promoted,
    TResult Function(int seq, DateTime at, String line)? status,
    TResult Function(int seq, DateTime at, String chunk)? log,
    TResult Function(int seq, DateTime at, String message)? error,
    TResult Function(int seq, DateTime at, @JobStateConverter() JobState state,
            int? exitCode)?
        finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(seq, at, state, exitCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobQueuedEvent value) queued,
    required TResult Function(JobStartedEvent value) started,
    required TResult Function(JobPromotedEvent value) promoted,
    required TResult Function(JobStatusEvent value) status,
    required TResult Function(JobLogEvent value) log,
    required TResult Function(JobErrorEvent value) error,
    required TResult Function(JobFinishedEvent value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobQueuedEvent value)? queued,
    TResult? Function(JobStartedEvent value)? started,
    TResult? Function(JobPromotedEvent value)? promoted,
    TResult? Function(JobStatusEvent value)? status,
    TResult? Function(JobLogEvent value)? log,
    TResult? Function(JobErrorEvent value)? error,
    TResult? Function(JobFinishedEvent value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobQueuedEvent value)? queued,
    TResult Function(JobStartedEvent value)? started,
    TResult Function(JobPromotedEvent value)? promoted,
    TResult Function(JobStatusEvent value)? status,
    TResult Function(JobLogEvent value)? log,
    TResult Function(JobErrorEvent value)? error,
    TResult Function(JobFinishedEvent value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$JobFinishedEventImplToJson(
      this,
    );
  }
}

abstract class JobFinishedEvent implements JobEvent {
  const factory JobFinishedEvent(
      {required final int seq,
      required final DateTime at,
      @JobStateConverter() required final JobState state,
      final int? exitCode}) = _$JobFinishedEventImpl;

  factory JobFinishedEvent.fromJson(Map<String, dynamic> json) =
      _$JobFinishedEventImpl.fromJson;

  @override
  int get seq;
  @override
  DateTime get at;
  @JobStateConverter()
  JobState get state;
  int? get exitCode;
  @override
  @JsonKey(ignore: true)
  _$$JobFinishedEventImplCopyWith<_$JobFinishedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
