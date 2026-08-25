// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Health _$HealthFromJson(Map<String, dynamic> json) {
  return _Health.fromJson(json);
}

/// @nodoc
mixin _$Health {
  bool get ok => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get appVersion => throw _privateConstructorUsedError;
  int get uptimeSeconds => throw _privateConstructorUsedError;
  String get hostname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthCopyWith<Health> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthCopyWith<$Res> {
  factory $HealthCopyWith(Health value, $Res Function(Health) then) =
      _$HealthCopyWithImpl<$Res, Health>;
  @useResult
  $Res call({
    bool ok,
    String version,
    String appVersion,
    int uptimeSeconds,
    String hostname,
  });
}

/// @nodoc
class _$HealthCopyWithImpl<$Res, $Val extends Health>
    implements $HealthCopyWith<$Res> {
  _$HealthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ok = null,
    Object? version = null,
    Object? appVersion = null,
    Object? uptimeSeconds = null,
    Object? hostname = null,
  }) {
    return _then(
      _value.copyWith(
            ok: null == ok
                ? _value.ok
                : ok // ignore: cast_nullable_to_non_nullable
                      as bool,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
            appVersion: null == appVersion
                ? _value.appVersion
                : appVersion // ignore: cast_nullable_to_non_nullable
                      as String,
            uptimeSeconds: null == uptimeSeconds
                ? _value.uptimeSeconds
                : uptimeSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
            hostname: null == hostname
                ? _value.hostname
                : hostname // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HealthImplCopyWith<$Res> implements $HealthCopyWith<$Res> {
  factory _$$HealthImplCopyWith(
    _$HealthImpl value,
    $Res Function(_$HealthImpl) then,
  ) = __$$HealthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool ok,
    String version,
    String appVersion,
    int uptimeSeconds,
    String hostname,
  });
}

/// @nodoc
class __$$HealthImplCopyWithImpl<$Res>
    extends _$HealthCopyWithImpl<$Res, _$HealthImpl>
    implements _$$HealthImplCopyWith<$Res> {
  __$$HealthImplCopyWithImpl(
    _$HealthImpl _value,
    $Res Function(_$HealthImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ok = null,
    Object? version = null,
    Object? appVersion = null,
    Object? uptimeSeconds = null,
    Object? hostname = null,
  }) {
    return _then(
      _$HealthImpl(
        ok: null == ok
            ? _value.ok
            : ok // ignore: cast_nullable_to_non_nullable
                  as bool,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
        appVersion: null == appVersion
            ? _value.appVersion
            : appVersion // ignore: cast_nullable_to_non_nullable
                  as String,
        uptimeSeconds: null == uptimeSeconds
            ? _value.uptimeSeconds
            : uptimeSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
        hostname: null == hostname
            ? _value.hostname
            : hostname // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthImpl implements _Health {
  const _$HealthImpl({
    required this.ok,
    required this.version,
    required this.appVersion,
    required this.uptimeSeconds,
    required this.hostname,
  });

  factory _$HealthImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthImplFromJson(json);

  @override
  final bool ok;
  @override
  final String version;
  @override
  final String appVersion;
  @override
  final int uptimeSeconds;
  @override
  final String hostname;

  @override
  String toString() {
    return 'Health(ok: $ok, version: $version, appVersion: $appVersion, uptimeSeconds: $uptimeSeconds, hostname: $hostname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthImpl &&
            (identical(other.ok, ok) || other.ok == ok) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.uptimeSeconds, uptimeSeconds) ||
                other.uptimeSeconds == uptimeSeconds) &&
            (identical(other.hostname, hostname) ||
                other.hostname == hostname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    ok,
    version,
    appVersion,
    uptimeSeconds,
    hostname,
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthImplCopyWith<_$HealthImpl> get copyWith =>
      __$$HealthImplCopyWithImpl<_$HealthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthImplToJson(this);
  }
}

abstract class _Health implements Health {
  const factory _Health({
    required final bool ok,
    required final String version,
    required final String appVersion,
    required final int uptimeSeconds,
    required final String hostname,
  }) = _$HealthImpl;

  factory _Health.fromJson(Map<String, dynamic> json) = _$HealthImpl.fromJson;

  @override
  bool get ok;
  @override
  String get version;
  @override
  String get appVersion;
  @override
  int get uptimeSeconds;
  @override
  String get hostname;
  @override
  @JsonKey(ignore: true)
  _$$HealthImplCopyWith<_$HealthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
