// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_submission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JobSubmission {
  Job get job => throw _privateConstructorUsedError;

  /// Live build log, served by the static file handler.
  String get logUrl => throw _privateConstructorUsedError;

  /// Non-fatal problems the caller should see, e.g. the Discord message
  /// could not be posted. The job still runs — a Discord outage must not
  /// become a CI outage.
  List<String> get warnings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobSubmissionCopyWith<JobSubmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobSubmissionCopyWith<$Res> {
  factory $JobSubmissionCopyWith(
          JobSubmission value, $Res Function(JobSubmission) then) =
      _$JobSubmissionCopyWithImpl<$Res, JobSubmission>;
  @useResult
  $Res call({Job job, String logUrl, List<String> warnings});

  $JobCopyWith<$Res> get job;
}

/// @nodoc
class _$JobSubmissionCopyWithImpl<$Res, $Val extends JobSubmission>
    implements $JobSubmissionCopyWith<$Res> {
  _$JobSubmissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? job = null,
    Object? logUrl = null,
    Object? warnings = null,
  }) {
    return _then(_value.copyWith(
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
      logUrl: null == logUrl
          ? _value.logUrl
          : logUrl // ignore: cast_nullable_to_non_nullable
              as String,
      warnings: null == warnings
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JobCopyWith<$Res> get job {
    return $JobCopyWith<$Res>(_value.job, (value) {
      return _then(_value.copyWith(job: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobSubmissionImplCopyWith<$Res>
    implements $JobSubmissionCopyWith<$Res> {
  factory _$$JobSubmissionImplCopyWith(
          _$JobSubmissionImpl value, $Res Function(_$JobSubmissionImpl) then) =
      __$$JobSubmissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Job job, String logUrl, List<String> warnings});

  @override
  $JobCopyWith<$Res> get job;
}

/// @nodoc
class __$$JobSubmissionImplCopyWithImpl<$Res>
    extends _$JobSubmissionCopyWithImpl<$Res, _$JobSubmissionImpl>
    implements _$$JobSubmissionImplCopyWith<$Res> {
  __$$JobSubmissionImplCopyWithImpl(
      _$JobSubmissionImpl _value, $Res Function(_$JobSubmissionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? job = null,
    Object? logUrl = null,
    Object? warnings = null,
  }) {
    return _then(_$JobSubmissionImpl(
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
      logUrl: null == logUrl
          ? _value.logUrl
          : logUrl // ignore: cast_nullable_to_non_nullable
              as String,
      warnings: null == warnings
          ? _value._warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$JobSubmissionImpl extends _JobSubmission {
  const _$JobSubmissionImpl(
      {required this.job,
      required this.logUrl,
      final List<String> warnings = const []})
      : _warnings = warnings,
        super._();

  @override
  final Job job;

  /// Live build log, served by the static file handler.
  @override
  final String logUrl;

  /// Non-fatal problems the caller should see, e.g. the Discord message
  /// could not be posted. The job still runs — a Discord outage must not
  /// become a CI outage.
  final List<String> _warnings;

  /// Non-fatal problems the caller should see, e.g. the Discord message
  /// could not be posted. The job still runs — a Discord outage must not
  /// become a CI outage.
  @override
  @JsonKey()
  List<String> get warnings {
    if (_warnings is EqualUnmodifiableListView) return _warnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warnings);
  }

  @override
  String toString() {
    return 'JobSubmission(job: $job, logUrl: $logUrl, warnings: $warnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobSubmissionImpl &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.logUrl, logUrl) || other.logUrl == logUrl) &&
            const DeepCollectionEquality().equals(other._warnings, _warnings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, job, logUrl, const DeepCollectionEquality().hash(_warnings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobSubmissionImplCopyWith<_$JobSubmissionImpl> get copyWith =>
      __$$JobSubmissionImplCopyWithImpl<_$JobSubmissionImpl>(this, _$identity);
}

abstract class _JobSubmission extends JobSubmission {
  const factory _JobSubmission(
      {required final Job job,
      required final String logUrl,
      final List<String> warnings}) = _$JobSubmissionImpl;
  const _JobSubmission._() : super._();

  @override
  Job get job;
  @override

  /// Live build log, served by the static file handler.
  String get logUrl;
  @override

  /// Non-fatal problems the caller should see, e.g. the Discord message
  /// could not be posted. The job still runs — a Discord outage must not
  /// become a CI outage.
  List<String> get warnings;
  @override
  @JsonKey(ignore: true)
  _$$JobSubmissionImplCopyWith<_$JobSubmissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
