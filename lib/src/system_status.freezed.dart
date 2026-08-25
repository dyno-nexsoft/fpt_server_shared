// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SystemStatus _$SystemStatusFromJson(Map<String, dynamic> json) {
  return _SystemStatus.fromJson(json);
}

/// @nodoc
mixin _$SystemStatus {
  String get appVersion => throw _privateConstructorUsedError;
  String get dartVersion => throw _privateConstructorUsedError;
  String get hostname => throw _privateConstructorUsedError;
  int get uptimeSeconds => throw _privateConstructorUsedError;
  String get uptime => throw _privateConstructorUsedError;
  String get workingDirectory => throw _privateConstructorUsedError;
  List<Job> get running => throw _privateConstructorUsedError;
  List<Job> get queued => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SystemStatusCopyWith<SystemStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemStatusCopyWith<$Res> {
  factory $SystemStatusCopyWith(
    SystemStatus value,
    $Res Function(SystemStatus) then,
  ) = _$SystemStatusCopyWithImpl<$Res, SystemStatus>;
  @useResult
  $Res call({
    String appVersion,
    String dartVersion,
    String hostname,
    int uptimeSeconds,
    String uptime,
    String workingDirectory,
    List<Job> running,
    List<Job> queued,
  });
}

/// @nodoc
class _$SystemStatusCopyWithImpl<$Res, $Val extends SystemStatus>
    implements $SystemStatusCopyWith<$Res> {
  _$SystemStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
    Object? dartVersion = null,
    Object? hostname = null,
    Object? uptimeSeconds = null,
    Object? uptime = null,
    Object? workingDirectory = null,
    Object? running = null,
    Object? queued = null,
  }) {
    return _then(
      _value.copyWith(
            appVersion: null == appVersion
                ? _value.appVersion
                : appVersion // ignore: cast_nullable_to_non_nullable
                      as String,
            dartVersion: null == dartVersion
                ? _value.dartVersion
                : dartVersion // ignore: cast_nullable_to_non_nullable
                      as String,
            hostname: null == hostname
                ? _value.hostname
                : hostname // ignore: cast_nullable_to_non_nullable
                      as String,
            uptimeSeconds: null == uptimeSeconds
                ? _value.uptimeSeconds
                : uptimeSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
            uptime: null == uptime
                ? _value.uptime
                : uptime // ignore: cast_nullable_to_non_nullable
                      as String,
            workingDirectory: null == workingDirectory
                ? _value.workingDirectory
                : workingDirectory // ignore: cast_nullable_to_non_nullable
                      as String,
            running: null == running
                ? _value.running
                : running // ignore: cast_nullable_to_non_nullable
                      as List<Job>,
            queued: null == queued
                ? _value.queued
                : queued // ignore: cast_nullable_to_non_nullable
                      as List<Job>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SystemStatusImplCopyWith<$Res>
    implements $SystemStatusCopyWith<$Res> {
  factory _$$SystemStatusImplCopyWith(
    _$SystemStatusImpl value,
    $Res Function(_$SystemStatusImpl) then,
  ) = __$$SystemStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String appVersion,
    String dartVersion,
    String hostname,
    int uptimeSeconds,
    String uptime,
    String workingDirectory,
    List<Job> running,
    List<Job> queued,
  });
}

/// @nodoc
class __$$SystemStatusImplCopyWithImpl<$Res>
    extends _$SystemStatusCopyWithImpl<$Res, _$SystemStatusImpl>
    implements _$$SystemStatusImplCopyWith<$Res> {
  __$$SystemStatusImplCopyWithImpl(
    _$SystemStatusImpl _value,
    $Res Function(_$SystemStatusImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
    Object? dartVersion = null,
    Object? hostname = null,
    Object? uptimeSeconds = null,
    Object? uptime = null,
    Object? workingDirectory = null,
    Object? running = null,
    Object? queued = null,
  }) {
    return _then(
      _$SystemStatusImpl(
        appVersion: null == appVersion
            ? _value.appVersion
            : appVersion // ignore: cast_nullable_to_non_nullable
                  as String,
        dartVersion: null == dartVersion
            ? _value.dartVersion
            : dartVersion // ignore: cast_nullable_to_non_nullable
                  as String,
        hostname: null == hostname
            ? _value.hostname
            : hostname // ignore: cast_nullable_to_non_nullable
                  as String,
        uptimeSeconds: null == uptimeSeconds
            ? _value.uptimeSeconds
            : uptimeSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
        uptime: null == uptime
            ? _value.uptime
            : uptime // ignore: cast_nullable_to_non_nullable
                  as String,
        workingDirectory: null == workingDirectory
            ? _value.workingDirectory
            : workingDirectory // ignore: cast_nullable_to_non_nullable
                  as String,
        running: null == running
            ? _value._running
            : running // ignore: cast_nullable_to_non_nullable
                  as List<Job>,
        queued: null == queued
            ? _value._queued
            : queued // ignore: cast_nullable_to_non_nullable
                  as List<Job>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemStatusImpl extends _SystemStatus {
  const _$SystemStatusImpl({
    required this.appVersion,
    required this.dartVersion,
    required this.hostname,
    required this.uptimeSeconds,
    required this.uptime,
    required this.workingDirectory,
    final List<Job> running = const [],
    final List<Job> queued = const [],
  }) : _running = running,
       _queued = queued,
       super._();

  factory _$SystemStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemStatusImplFromJson(json);

  @override
  final String appVersion;
  @override
  final String dartVersion;
  @override
  final String hostname;
  @override
  final int uptimeSeconds;
  @override
  final String uptime;
  @override
  final String workingDirectory;
  final List<Job> _running;
  @override
  @JsonKey()
  List<Job> get running {
    if (_running is EqualUnmodifiableListView) return _running;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_running);
  }

  final List<Job> _queued;
  @override
  @JsonKey()
  List<Job> get queued {
    if (_queued is EqualUnmodifiableListView) return _queued;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queued);
  }

  @override
  String toString() {
    return 'SystemStatus(appVersion: $appVersion, dartVersion: $dartVersion, hostname: $hostname, uptimeSeconds: $uptimeSeconds, uptime: $uptime, workingDirectory: $workingDirectory, running: $running, queued: $queued)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemStatusImpl &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.dartVersion, dartVersion) ||
                other.dartVersion == dartVersion) &&
            (identical(other.hostname, hostname) ||
                other.hostname == hostname) &&
            (identical(other.uptimeSeconds, uptimeSeconds) ||
                other.uptimeSeconds == uptimeSeconds) &&
            (identical(other.uptime, uptime) || other.uptime == uptime) &&
            (identical(other.workingDirectory, workingDirectory) ||
                other.workingDirectory == workingDirectory) &&
            const DeepCollectionEquality().equals(other._running, _running) &&
            const DeepCollectionEquality().equals(other._queued, _queued));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    appVersion,
    dartVersion,
    hostname,
    uptimeSeconds,
    uptime,
    workingDirectory,
    const DeepCollectionEquality().hash(_running),
    const DeepCollectionEquality().hash(_queued),
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemStatusImplCopyWith<_$SystemStatusImpl> get copyWith =>
      __$$SystemStatusImplCopyWithImpl<_$SystemStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemStatusImplToJson(this);
  }
}

abstract class _SystemStatus extends SystemStatus {
  const factory _SystemStatus({
    required final String appVersion,
    required final String dartVersion,
    required final String hostname,
    required final int uptimeSeconds,
    required final String uptime,
    required final String workingDirectory,
    final List<Job> running,
    final List<Job> queued,
  }) = _$SystemStatusImpl;
  const _SystemStatus._() : super._();

  factory _SystemStatus.fromJson(Map<String, dynamic> json) =
      _$SystemStatusImpl.fromJson;

  @override
  String get appVersion;
  @override
  String get dartVersion;
  @override
  String get hostname;
  @override
  int get uptimeSeconds;
  @override
  String get uptime;
  @override
  String get workingDirectory;
  @override
  List<Job> get running;
  @override
  List<Job> get queued;
  @override
  @JsonKey(ignore: true)
  _$$SystemStatusImplCopyWith<_$SystemStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
