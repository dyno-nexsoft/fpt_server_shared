// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_job_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduledJobConfig _$ScheduledJobConfigFromJson(Map<String, dynamic> json) {
  return _ScheduledJobConfig.fromJson(json);
}

/// @nodoc
mixin _$ScheduledJobConfig {
  /// The job's identity — what `cron.run` names it and the audit log shows.
  /// Letters, digits and underscores; fixed once created.
  String get name => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: JobKind.announcement)
  JobKind get kind => throw _privateConstructorUsedError;

  /// A disabled job stays configured but never runs on its own.
  bool get enabled => throw _privateConstructorUsedError;
  JobTiming get timing => throw _privateConstructorUsedError;

  /// For an announcement: what the AI is asked to say. Unused otherwise.
  String get prompt => throw _privateConstructorUsedError;

  /// For an announcement: spoken as it is when the AI cannot answer, so the
  /// reminder still happens. Unused otherwise.
  String get fallback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduledJobConfigCopyWith<ScheduledJobConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledJobConfigCopyWith<$Res> {
  factory $ScheduledJobConfigCopyWith(
          ScheduledJobConfig value, $Res Function(ScheduledJobConfig) then) =
      _$ScheduledJobConfigCopyWithImpl<$Res, ScheduledJobConfig>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(unknownEnumValue: JobKind.announcement) JobKind kind,
      bool enabled,
      JobTiming timing,
      String prompt,
      String fallback});

  $JobTimingCopyWith<$Res> get timing;
}

/// @nodoc
class _$ScheduledJobConfigCopyWithImpl<$Res, $Val extends ScheduledJobConfig>
    implements $ScheduledJobConfigCopyWith<$Res> {
  _$ScheduledJobConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? kind = null,
    Object? enabled = null,
    Object? timing = null,
    Object? prompt = null,
    Object? fallback = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as JobKind,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      timing: null == timing
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as JobTiming,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      fallback: null == fallback
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JobTimingCopyWith<$Res> get timing {
    return $JobTimingCopyWith<$Res>(_value.timing, (value) {
      return _then(_value.copyWith(timing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduledJobConfigImplCopyWith<$Res>
    implements $ScheduledJobConfigCopyWith<$Res> {
  factory _$$ScheduledJobConfigImplCopyWith(_$ScheduledJobConfigImpl value,
          $Res Function(_$ScheduledJobConfigImpl) then) =
      __$$ScheduledJobConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(unknownEnumValue: JobKind.announcement) JobKind kind,
      bool enabled,
      JobTiming timing,
      String prompt,
      String fallback});

  @override
  $JobTimingCopyWith<$Res> get timing;
}

/// @nodoc
class __$$ScheduledJobConfigImplCopyWithImpl<$Res>
    extends _$ScheduledJobConfigCopyWithImpl<$Res, _$ScheduledJobConfigImpl>
    implements _$$ScheduledJobConfigImplCopyWith<$Res> {
  __$$ScheduledJobConfigImplCopyWithImpl(_$ScheduledJobConfigImpl _value,
      $Res Function(_$ScheduledJobConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? kind = null,
    Object? enabled = null,
    Object? timing = null,
    Object? prompt = null,
    Object? fallback = null,
  }) {
    return _then(_$ScheduledJobConfigImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as JobKind,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      timing: null == timing
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as JobTiming,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      fallback: null == fallback
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduledJobConfigImpl extends _ScheduledJobConfig {
  const _$ScheduledJobConfigImpl(
      {required this.name,
      @JsonKey(unknownEnumValue: JobKind.announcement) required this.kind,
      this.enabled = true,
      required this.timing,
      this.prompt = '',
      this.fallback = ''})
      : super._();

  factory _$ScheduledJobConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduledJobConfigImplFromJson(json);

  /// The job's identity — what `cron.run` names it and the audit log shows.
  /// Letters, digits and underscores; fixed once created.
  @override
  final String name;
  @override
  @JsonKey(unknownEnumValue: JobKind.announcement)
  final JobKind kind;

  /// A disabled job stays configured but never runs on its own.
  @override
  @JsonKey()
  final bool enabled;
  @override
  final JobTiming timing;

  /// For an announcement: what the AI is asked to say. Unused otherwise.
  @override
  @JsonKey()
  final String prompt;

  /// For an announcement: spoken as it is when the AI cannot answer, so the
  /// reminder still happens. Unused otherwise.
  @override
  @JsonKey()
  final String fallback;

  @override
  String toString() {
    return 'ScheduledJobConfig(name: $name, kind: $kind, enabled: $enabled, timing: $timing, prompt: $prompt, fallback: $fallback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledJobConfigImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.timing, timing) || other.timing == timing) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.fallback, fallback) ||
                other.fallback == fallback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, kind, enabled, timing, prompt, fallback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledJobConfigImplCopyWith<_$ScheduledJobConfigImpl> get copyWith =>
      __$$ScheduledJobConfigImplCopyWithImpl<_$ScheduledJobConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduledJobConfigImplToJson(
      this,
    );
  }
}

abstract class _ScheduledJobConfig extends ScheduledJobConfig {
  const factory _ScheduledJobConfig(
      {required final String name,
      @JsonKey(unknownEnumValue: JobKind.announcement)
      required final JobKind kind,
      final bool enabled,
      required final JobTiming timing,
      final String prompt,
      final String fallback}) = _$ScheduledJobConfigImpl;
  const _ScheduledJobConfig._() : super._();

  factory _ScheduledJobConfig.fromJson(Map<String, dynamic> json) =
      _$ScheduledJobConfigImpl.fromJson;

  @override

  /// The job's identity — what `cron.run` names it and the audit log shows.
  /// Letters, digits and underscores; fixed once created.
  String get name;
  @override
  @JsonKey(unknownEnumValue: JobKind.announcement)
  JobKind get kind;
  @override

  /// A disabled job stays configured but never runs on its own.
  bool get enabled;
  @override
  JobTiming get timing;
  @override

  /// For an announcement: what the AI is asked to say. Unused otherwise.
  String get prompt;
  @override

  /// For an announcement: spoken as it is when the AI cannot answer, so the
  /// reminder still happens. Unused otherwise.
  String get fallback;
  @override
  @JsonKey(ignore: true)
  _$$ScheduledJobConfigImplCopyWith<_$ScheduledJobConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
