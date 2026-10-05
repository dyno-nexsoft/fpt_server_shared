// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_limits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppLimits _$AppLimitsFromJson(Map<String, dynamic> json) {
  return _AppLimits.fromJson(json);
}

/// @nodoc
mixin _$AppLimits {
  /// Days a GitLab review stays in history before it is pruned.
  int get reviewsDays => throw _privateConstructorUsedError;

  /// Days a translate-arb run stays in history.
  int get translatesDays => throw _privateConstructorUsedError;

  /// Days a notification stays in the inbox.
  int get notificationsDays => throw _privateConstructorUsedError;

  /// Minutes a build may run before it is stopped as hung.
  int get buildTimeoutMinutes => throw _privateConstructorUsedError;

  /// Days back the sweep looks on a day off, closing the week's reports.
  int get reportSweepDays => throw _privateConstructorUsedError;

  /// Most findings one review shows; the rest are summarised as omitted.
  int get reviewMaxIssues => throw _privateConstructorUsedError;

  /// Tries a request gets on one Gemini model and key before moving on.
  int get aiAttemptsPerModel => throw _privateConstructorUsedError;

  /// Minutes a Gemini key that failed is left alone.
  int get aiKeyRestMinutes => throw _privateConstructorUsedError;

  /// Gemini requests in flight at once, across every review and
  /// announcement.
  int get aiMaxConcurrentRequests => throw _privateConstructorUsedError;

  /// Sibling models tried when the chosen one is out of capacity.
  int get aiFallbackModels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppLimitsCopyWith<AppLimits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLimitsCopyWith<$Res> {
  factory $AppLimitsCopyWith(AppLimits value, $Res Function(AppLimits) then) =
      _$AppLimitsCopyWithImpl<$Res, AppLimits>;
  @useResult
  $Res call(
      {int reviewsDays,
      int translatesDays,
      int notificationsDays,
      int buildTimeoutMinutes,
      int reportSweepDays,
      int reviewMaxIssues,
      int aiAttemptsPerModel,
      int aiKeyRestMinutes,
      int aiMaxConcurrentRequests,
      int aiFallbackModels});
}

/// @nodoc
class _$AppLimitsCopyWithImpl<$Res, $Val extends AppLimits>
    implements $AppLimitsCopyWith<$Res> {
  _$AppLimitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewsDays = null,
    Object? translatesDays = null,
    Object? notificationsDays = null,
    Object? buildTimeoutMinutes = null,
    Object? reportSweepDays = null,
    Object? reviewMaxIssues = null,
    Object? aiAttemptsPerModel = null,
    Object? aiKeyRestMinutes = null,
    Object? aiMaxConcurrentRequests = null,
    Object? aiFallbackModels = null,
  }) {
    return _then(_value.copyWith(
      reviewsDays: null == reviewsDays
          ? _value.reviewsDays
          : reviewsDays // ignore: cast_nullable_to_non_nullable
              as int,
      translatesDays: null == translatesDays
          ? _value.translatesDays
          : translatesDays // ignore: cast_nullable_to_non_nullable
              as int,
      notificationsDays: null == notificationsDays
          ? _value.notificationsDays
          : notificationsDays // ignore: cast_nullable_to_non_nullable
              as int,
      buildTimeoutMinutes: null == buildTimeoutMinutes
          ? _value.buildTimeoutMinutes
          : buildTimeoutMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      reportSweepDays: null == reportSweepDays
          ? _value.reportSweepDays
          : reportSweepDays // ignore: cast_nullable_to_non_nullable
              as int,
      reviewMaxIssues: null == reviewMaxIssues
          ? _value.reviewMaxIssues
          : reviewMaxIssues // ignore: cast_nullable_to_non_nullable
              as int,
      aiAttemptsPerModel: null == aiAttemptsPerModel
          ? _value.aiAttemptsPerModel
          : aiAttemptsPerModel // ignore: cast_nullable_to_non_nullable
              as int,
      aiKeyRestMinutes: null == aiKeyRestMinutes
          ? _value.aiKeyRestMinutes
          : aiKeyRestMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      aiMaxConcurrentRequests: null == aiMaxConcurrentRequests
          ? _value.aiMaxConcurrentRequests
          : aiMaxConcurrentRequests // ignore: cast_nullable_to_non_nullable
              as int,
      aiFallbackModels: null == aiFallbackModels
          ? _value.aiFallbackModels
          : aiFallbackModels // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppLimitsImplCopyWith<$Res>
    implements $AppLimitsCopyWith<$Res> {
  factory _$$AppLimitsImplCopyWith(
          _$AppLimitsImpl value, $Res Function(_$AppLimitsImpl) then) =
      __$$AppLimitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int reviewsDays,
      int translatesDays,
      int notificationsDays,
      int buildTimeoutMinutes,
      int reportSweepDays,
      int reviewMaxIssues,
      int aiAttemptsPerModel,
      int aiKeyRestMinutes,
      int aiMaxConcurrentRequests,
      int aiFallbackModels});
}

/// @nodoc
class __$$AppLimitsImplCopyWithImpl<$Res>
    extends _$AppLimitsCopyWithImpl<$Res, _$AppLimitsImpl>
    implements _$$AppLimitsImplCopyWith<$Res> {
  __$$AppLimitsImplCopyWithImpl(
      _$AppLimitsImpl _value, $Res Function(_$AppLimitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewsDays = null,
    Object? translatesDays = null,
    Object? notificationsDays = null,
    Object? buildTimeoutMinutes = null,
    Object? reportSweepDays = null,
    Object? reviewMaxIssues = null,
    Object? aiAttemptsPerModel = null,
    Object? aiKeyRestMinutes = null,
    Object? aiMaxConcurrentRequests = null,
    Object? aiFallbackModels = null,
  }) {
    return _then(_$AppLimitsImpl(
      reviewsDays: null == reviewsDays
          ? _value.reviewsDays
          : reviewsDays // ignore: cast_nullable_to_non_nullable
              as int,
      translatesDays: null == translatesDays
          ? _value.translatesDays
          : translatesDays // ignore: cast_nullable_to_non_nullable
              as int,
      notificationsDays: null == notificationsDays
          ? _value.notificationsDays
          : notificationsDays // ignore: cast_nullable_to_non_nullable
              as int,
      buildTimeoutMinutes: null == buildTimeoutMinutes
          ? _value.buildTimeoutMinutes
          : buildTimeoutMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      reportSweepDays: null == reportSweepDays
          ? _value.reportSweepDays
          : reportSweepDays // ignore: cast_nullable_to_non_nullable
              as int,
      reviewMaxIssues: null == reviewMaxIssues
          ? _value.reviewMaxIssues
          : reviewMaxIssues // ignore: cast_nullable_to_non_nullable
              as int,
      aiAttemptsPerModel: null == aiAttemptsPerModel
          ? _value.aiAttemptsPerModel
          : aiAttemptsPerModel // ignore: cast_nullable_to_non_nullable
              as int,
      aiKeyRestMinutes: null == aiKeyRestMinutes
          ? _value.aiKeyRestMinutes
          : aiKeyRestMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      aiMaxConcurrentRequests: null == aiMaxConcurrentRequests
          ? _value.aiMaxConcurrentRequests
          : aiMaxConcurrentRequests // ignore: cast_nullable_to_non_nullable
              as int,
      aiFallbackModels: null == aiFallbackModels
          ? _value.aiFallbackModels
          : aiFallbackModels // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppLimitsImpl extends _AppLimits {
  const _$AppLimitsImpl(
      {this.reviewsDays = 7,
      this.translatesDays = 7,
      this.notificationsDays = 7,
      this.buildTimeoutMinutes = 120,
      this.reportSweepDays = 7,
      this.reviewMaxIssues = 20,
      this.aiAttemptsPerModel = 3,
      this.aiKeyRestMinutes = 10,
      this.aiMaxConcurrentRequests = 2,
      this.aiFallbackModels = 2})
      : super._();

  factory _$AppLimitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppLimitsImplFromJson(json);

  /// Days a GitLab review stays in history before it is pruned.
  @override
  @JsonKey()
  final int reviewsDays;

  /// Days a translate-arb run stays in history.
  @override
  @JsonKey()
  final int translatesDays;

  /// Days a notification stays in the inbox.
  @override
  @JsonKey()
  final int notificationsDays;

  /// Minutes a build may run before it is stopped as hung.
  @override
  @JsonKey()
  final int buildTimeoutMinutes;

  /// Days back the sweep looks on a day off, closing the week's reports.
  @override
  @JsonKey()
  final int reportSweepDays;

  /// Most findings one review shows; the rest are summarised as omitted.
  @override
  @JsonKey()
  final int reviewMaxIssues;

  /// Tries a request gets on one Gemini model and key before moving on.
  @override
  @JsonKey()
  final int aiAttemptsPerModel;

  /// Minutes a Gemini key that failed is left alone.
  @override
  @JsonKey()
  final int aiKeyRestMinutes;

  /// Gemini requests in flight at once, across every review and
  /// announcement.
  @override
  @JsonKey()
  final int aiMaxConcurrentRequests;

  /// Sibling models tried when the chosen one is out of capacity.
  @override
  @JsonKey()
  final int aiFallbackModels;

  @override
  String toString() {
    return 'AppLimits(reviewsDays: $reviewsDays, translatesDays: $translatesDays, notificationsDays: $notificationsDays, buildTimeoutMinutes: $buildTimeoutMinutes, reportSweepDays: $reportSweepDays, reviewMaxIssues: $reviewMaxIssues, aiAttemptsPerModel: $aiAttemptsPerModel, aiKeyRestMinutes: $aiKeyRestMinutes, aiMaxConcurrentRequests: $aiMaxConcurrentRequests, aiFallbackModels: $aiFallbackModels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLimitsImpl &&
            (identical(other.reviewsDays, reviewsDays) ||
                other.reviewsDays == reviewsDays) &&
            (identical(other.translatesDays, translatesDays) ||
                other.translatesDays == translatesDays) &&
            (identical(other.notificationsDays, notificationsDays) ||
                other.notificationsDays == notificationsDays) &&
            (identical(other.buildTimeoutMinutes, buildTimeoutMinutes) ||
                other.buildTimeoutMinutes == buildTimeoutMinutes) &&
            (identical(other.reportSweepDays, reportSweepDays) ||
                other.reportSweepDays == reportSweepDays) &&
            (identical(other.reviewMaxIssues, reviewMaxIssues) ||
                other.reviewMaxIssues == reviewMaxIssues) &&
            (identical(other.aiAttemptsPerModel, aiAttemptsPerModel) ||
                other.aiAttemptsPerModel == aiAttemptsPerModel) &&
            (identical(other.aiKeyRestMinutes, aiKeyRestMinutes) ||
                other.aiKeyRestMinutes == aiKeyRestMinutes) &&
            (identical(
                    other.aiMaxConcurrentRequests, aiMaxConcurrentRequests) ||
                other.aiMaxConcurrentRequests == aiMaxConcurrentRequests) &&
            (identical(other.aiFallbackModels, aiFallbackModels) ||
                other.aiFallbackModels == aiFallbackModels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      reviewsDays,
      translatesDays,
      notificationsDays,
      buildTimeoutMinutes,
      reportSweepDays,
      reviewMaxIssues,
      aiAttemptsPerModel,
      aiKeyRestMinutes,
      aiMaxConcurrentRequests,
      aiFallbackModels);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLimitsImplCopyWith<_$AppLimitsImpl> get copyWith =>
      __$$AppLimitsImplCopyWithImpl<_$AppLimitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppLimitsImplToJson(
      this,
    );
  }
}

abstract class _AppLimits extends AppLimits {
  const factory _AppLimits(
      {final int reviewsDays,
      final int translatesDays,
      final int notificationsDays,
      final int buildTimeoutMinutes,
      final int reportSweepDays,
      final int reviewMaxIssues,
      final int aiAttemptsPerModel,
      final int aiKeyRestMinutes,
      final int aiMaxConcurrentRequests,
      final int aiFallbackModels}) = _$AppLimitsImpl;
  const _AppLimits._() : super._();

  factory _AppLimits.fromJson(Map<String, dynamic> json) =
      _$AppLimitsImpl.fromJson;

  @override

  /// Days a GitLab review stays in history before it is pruned.
  int get reviewsDays;
  @override

  /// Days a translate-arb run stays in history.
  int get translatesDays;
  @override

  /// Days a notification stays in the inbox.
  int get notificationsDays;
  @override

  /// Minutes a build may run before it is stopped as hung.
  int get buildTimeoutMinutes;
  @override

  /// Days back the sweep looks on a day off, closing the week's reports.
  int get reportSweepDays;
  @override

  /// Most findings one review shows; the rest are summarised as omitted.
  int get reviewMaxIssues;
  @override

  /// Tries a request gets on one Gemini model and key before moving on.
  int get aiAttemptsPerModel;
  @override

  /// Minutes a Gemini key that failed is left alone.
  int get aiKeyRestMinutes;
  @override

  /// Gemini requests in flight at once, across every review and
  /// announcement.
  int get aiMaxConcurrentRequests;
  @override

  /// Sibling models tried when the chosen one is out of capacity.
  int get aiFallbackModels;
  @override
  @JsonKey(ignore: true)
  _$$AppLimitsImplCopyWith<_$AppLimitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LimitsSetParams _$LimitsSetParamsFromJson(Map<String, dynamic> json) {
  return _LimitsSetParams.fromJson(json);
}

/// @nodoc
mixin _$LimitsSetParams {
  AppLimits get limits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LimitsSetParamsCopyWith<LimitsSetParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LimitsSetParamsCopyWith<$Res> {
  factory $LimitsSetParamsCopyWith(
          LimitsSetParams value, $Res Function(LimitsSetParams) then) =
      _$LimitsSetParamsCopyWithImpl<$Res, LimitsSetParams>;
  @useResult
  $Res call({AppLimits limits});

  $AppLimitsCopyWith<$Res> get limits;
}

/// @nodoc
class _$LimitsSetParamsCopyWithImpl<$Res, $Val extends LimitsSetParams>
    implements $LimitsSetParamsCopyWith<$Res> {
  _$LimitsSetParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limits = null,
  }) {
    return _then(_value.copyWith(
      limits: null == limits
          ? _value.limits
          : limits // ignore: cast_nullable_to_non_nullable
              as AppLimits,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppLimitsCopyWith<$Res> get limits {
    return $AppLimitsCopyWith<$Res>(_value.limits, (value) {
      return _then(_value.copyWith(limits: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LimitsSetParamsImplCopyWith<$Res>
    implements $LimitsSetParamsCopyWith<$Res> {
  factory _$$LimitsSetParamsImplCopyWith(_$LimitsSetParamsImpl value,
          $Res Function(_$LimitsSetParamsImpl) then) =
      __$$LimitsSetParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppLimits limits});

  @override
  $AppLimitsCopyWith<$Res> get limits;
}

/// @nodoc
class __$$LimitsSetParamsImplCopyWithImpl<$Res>
    extends _$LimitsSetParamsCopyWithImpl<$Res, _$LimitsSetParamsImpl>
    implements _$$LimitsSetParamsImplCopyWith<$Res> {
  __$$LimitsSetParamsImplCopyWithImpl(
      _$LimitsSetParamsImpl _value, $Res Function(_$LimitsSetParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limits = null,
  }) {
    return _then(_$LimitsSetParamsImpl(
      limits: null == limits
          ? _value.limits
          : limits // ignore: cast_nullable_to_non_nullable
              as AppLimits,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LimitsSetParamsImpl implements _LimitsSetParams {
  const _$LimitsSetParamsImpl({required this.limits});

  factory _$LimitsSetParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LimitsSetParamsImplFromJson(json);

  @override
  final AppLimits limits;

  @override
  String toString() {
    return 'LimitsSetParams(limits: $limits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LimitsSetParamsImpl &&
            (identical(other.limits, limits) || other.limits == limits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, limits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LimitsSetParamsImplCopyWith<_$LimitsSetParamsImpl> get copyWith =>
      __$$LimitsSetParamsImplCopyWithImpl<_$LimitsSetParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LimitsSetParamsImplToJson(
      this,
    );
  }
}

abstract class _LimitsSetParams implements LimitsSetParams {
  const factory _LimitsSetParams({required final AppLimits limits}) =
      _$LimitsSetParamsImpl;

  factory _LimitsSetParams.fromJson(Map<String, dynamic> json) =
      _$LimitsSetParamsImpl.fromJson;

  @override
  AppLimits get limits;
  @override
  @JsonKey(ignore: true)
  _$$LimitsSetParamsImplCopyWith<_$LimitsSetParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LimitsInfo _$LimitsInfoFromJson(Map<String, dynamic> json) {
  return _LimitsInfo.fromJson(json);
}

/// @nodoc
mixin _$LimitsInfo {
  AppLimits get limits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LimitsInfoCopyWith<LimitsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LimitsInfoCopyWith<$Res> {
  factory $LimitsInfoCopyWith(
          LimitsInfo value, $Res Function(LimitsInfo) then) =
      _$LimitsInfoCopyWithImpl<$Res, LimitsInfo>;
  @useResult
  $Res call({AppLimits limits});

  $AppLimitsCopyWith<$Res> get limits;
}

/// @nodoc
class _$LimitsInfoCopyWithImpl<$Res, $Val extends LimitsInfo>
    implements $LimitsInfoCopyWith<$Res> {
  _$LimitsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limits = null,
  }) {
    return _then(_value.copyWith(
      limits: null == limits
          ? _value.limits
          : limits // ignore: cast_nullable_to_non_nullable
              as AppLimits,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppLimitsCopyWith<$Res> get limits {
    return $AppLimitsCopyWith<$Res>(_value.limits, (value) {
      return _then(_value.copyWith(limits: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LimitsInfoImplCopyWith<$Res>
    implements $LimitsInfoCopyWith<$Res> {
  factory _$$LimitsInfoImplCopyWith(
          _$LimitsInfoImpl value, $Res Function(_$LimitsInfoImpl) then) =
      __$$LimitsInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppLimits limits});

  @override
  $AppLimitsCopyWith<$Res> get limits;
}

/// @nodoc
class __$$LimitsInfoImplCopyWithImpl<$Res>
    extends _$LimitsInfoCopyWithImpl<$Res, _$LimitsInfoImpl>
    implements _$$LimitsInfoImplCopyWith<$Res> {
  __$$LimitsInfoImplCopyWithImpl(
      _$LimitsInfoImpl _value, $Res Function(_$LimitsInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limits = null,
  }) {
    return _then(_$LimitsInfoImpl(
      limits: null == limits
          ? _value.limits
          : limits // ignore: cast_nullable_to_non_nullable
              as AppLimits,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LimitsInfoImpl implements _LimitsInfo {
  const _$LimitsInfoImpl({required this.limits});

  factory _$LimitsInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LimitsInfoImplFromJson(json);

  @override
  final AppLimits limits;

  @override
  String toString() {
    return 'LimitsInfo(limits: $limits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LimitsInfoImpl &&
            (identical(other.limits, limits) || other.limits == limits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, limits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LimitsInfoImplCopyWith<_$LimitsInfoImpl> get copyWith =>
      __$$LimitsInfoImplCopyWithImpl<_$LimitsInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LimitsInfoImplToJson(
      this,
    );
  }
}

abstract class _LimitsInfo implements LimitsInfo {
  const factory _LimitsInfo({required final AppLimits limits}) =
      _$LimitsInfoImpl;

  factory _LimitsInfo.fromJson(Map<String, dynamic> json) =
      _$LimitsInfoImpl.fromJson;

  @override
  AppLimits get limits;
  @override
  @JsonKey(ignore: true)
  _$$LimitsInfoImplCopyWith<_$LimitsInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
