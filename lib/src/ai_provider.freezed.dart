// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AiProviderSetParams _$AiProviderSetParamsFromJson(Map<String, dynamic> json) {
  return _AiProviderSetParams.fromJson(json);
}

/// @nodoc
mixin _$AiProviderSetParams {
  /// The backend to activate: `gemini` or `groq`.
  String get provider => throw _privateConstructorUsedError;

  /// Whether to try the other provider when the active one is down. Null
  /// leaves it as it is.
  bool? get failover => throw _privateConstructorUsedError;

  /// The model id a provider answers a tier with — see [AiModelIds]. Each is
  /// null to leave that one as it is.
  String? get geminiFlash => throw _privateConstructorUsedError;
  String? get geminiPro => throw _privateConstructorUsedError;
  String? get groqFlash => throw _privateConstructorUsedError;
  String? get groqPro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiProviderSetParamsCopyWith<AiProviderSetParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiProviderSetParamsCopyWith<$Res> {
  factory $AiProviderSetParamsCopyWith(
          AiProviderSetParams value, $Res Function(AiProviderSetParams) then) =
      _$AiProviderSetParamsCopyWithImpl<$Res, AiProviderSetParams>;
  @useResult
  $Res call(
      {String provider,
      bool? failover,
      String? geminiFlash,
      String? geminiPro,
      String? groqFlash,
      String? groqPro});
}

/// @nodoc
class _$AiProviderSetParamsCopyWithImpl<$Res, $Val extends AiProviderSetParams>
    implements $AiProviderSetParamsCopyWith<$Res> {
  _$AiProviderSetParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? failover = freezed,
    Object? geminiFlash = freezed,
    Object? geminiPro = freezed,
    Object? groqFlash = freezed,
    Object? groqPro = freezed,
  }) {
    return _then(_value.copyWith(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      failover: freezed == failover
          ? _value.failover
          : failover // ignore: cast_nullable_to_non_nullable
              as bool?,
      geminiFlash: freezed == geminiFlash
          ? _value.geminiFlash
          : geminiFlash // ignore: cast_nullable_to_non_nullable
              as String?,
      geminiPro: freezed == geminiPro
          ? _value.geminiPro
          : geminiPro // ignore: cast_nullable_to_non_nullable
              as String?,
      groqFlash: freezed == groqFlash
          ? _value.groqFlash
          : groqFlash // ignore: cast_nullable_to_non_nullable
              as String?,
      groqPro: freezed == groqPro
          ? _value.groqPro
          : groqPro // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiProviderSetParamsImplCopyWith<$Res>
    implements $AiProviderSetParamsCopyWith<$Res> {
  factory _$$AiProviderSetParamsImplCopyWith(_$AiProviderSetParamsImpl value,
          $Res Function(_$AiProviderSetParamsImpl) then) =
      __$$AiProviderSetParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String provider,
      bool? failover,
      String? geminiFlash,
      String? geminiPro,
      String? groqFlash,
      String? groqPro});
}

/// @nodoc
class __$$AiProviderSetParamsImplCopyWithImpl<$Res>
    extends _$AiProviderSetParamsCopyWithImpl<$Res, _$AiProviderSetParamsImpl>
    implements _$$AiProviderSetParamsImplCopyWith<$Res> {
  __$$AiProviderSetParamsImplCopyWithImpl(_$AiProviderSetParamsImpl _value,
      $Res Function(_$AiProviderSetParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? failover = freezed,
    Object? geminiFlash = freezed,
    Object? geminiPro = freezed,
    Object? groqFlash = freezed,
    Object? groqPro = freezed,
  }) {
    return _then(_$AiProviderSetParamsImpl(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      failover: freezed == failover
          ? _value.failover
          : failover // ignore: cast_nullable_to_non_nullable
              as bool?,
      geminiFlash: freezed == geminiFlash
          ? _value.geminiFlash
          : geminiFlash // ignore: cast_nullable_to_non_nullable
              as String?,
      geminiPro: freezed == geminiPro
          ? _value.geminiPro
          : geminiPro // ignore: cast_nullable_to_non_nullable
              as String?,
      groqFlash: freezed == groqFlash
          ? _value.groqFlash
          : groqFlash // ignore: cast_nullable_to_non_nullable
              as String?,
      groqPro: freezed == groqPro
          ? _value.groqPro
          : groqPro // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiProviderSetParamsImpl implements _AiProviderSetParams {
  const _$AiProviderSetParamsImpl(
      {required this.provider,
      this.failover,
      this.geminiFlash,
      this.geminiPro,
      this.groqFlash,
      this.groqPro});

  factory _$AiProviderSetParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiProviderSetParamsImplFromJson(json);

  /// The backend to activate: `gemini` or `groq`.
  @override
  final String provider;

  /// Whether to try the other provider when the active one is down. Null
  /// leaves it as it is.
  @override
  final bool? failover;

  /// The model id a provider answers a tier with — see [AiModelIds]. Each is
  /// null to leave that one as it is.
  @override
  final String? geminiFlash;
  @override
  final String? geminiPro;
  @override
  final String? groqFlash;
  @override
  final String? groqPro;

  @override
  String toString() {
    return 'AiProviderSetParams(provider: $provider, failover: $failover, geminiFlash: $geminiFlash, geminiPro: $geminiPro, groqFlash: $groqFlash, groqPro: $groqPro)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiProviderSetParamsImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.failover, failover) ||
                other.failover == failover) &&
            (identical(other.geminiFlash, geminiFlash) ||
                other.geminiFlash == geminiFlash) &&
            (identical(other.geminiPro, geminiPro) ||
                other.geminiPro == geminiPro) &&
            (identical(other.groqFlash, groqFlash) ||
                other.groqFlash == groqFlash) &&
            (identical(other.groqPro, groqPro) || other.groqPro == groqPro));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, provider, failover, geminiFlash,
      geminiPro, groqFlash, groqPro);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiProviderSetParamsImplCopyWith<_$AiProviderSetParamsImpl> get copyWith =>
      __$$AiProviderSetParamsImplCopyWithImpl<_$AiProviderSetParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiProviderSetParamsImplToJson(
      this,
    );
  }
}

abstract class _AiProviderSetParams implements AiProviderSetParams {
  const factory _AiProviderSetParams(
      {required final String provider,
      final bool? failover,
      final String? geminiFlash,
      final String? geminiPro,
      final String? groqFlash,
      final String? groqPro}) = _$AiProviderSetParamsImpl;

  factory _AiProviderSetParams.fromJson(Map<String, dynamic> json) =
      _$AiProviderSetParamsImpl.fromJson;

  @override

  /// The backend to activate: `gemini` or `groq`.
  String get provider;
  @override

  /// Whether to try the other provider when the active one is down. Null
  /// leaves it as it is.
  bool? get failover;
  @override

  /// The model id a provider answers a tier with — see [AiModelIds]. Each is
  /// null to leave that one as it is.
  String? get geminiFlash;
  @override
  String? get geminiPro;
  @override
  String? get groqFlash;
  @override
  String? get groqPro;
  @override
  @JsonKey(ignore: true)
  _$$AiProviderSetParamsImplCopyWith<_$AiProviderSetParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AiProviderInfo _$AiProviderInfoFromJson(Map<String, dynamic> json) {
  return _AiProviderInfo.fromJson(json);
}

/// @nodoc
mixin _$AiProviderInfo {
  String get provider => throw _privateConstructorUsedError;

  /// Every provider with at least one API key configured — the ones that can
  /// be selected.
  List<String> get available => throw _privateConstructorUsedError;

  /// Whether a provider that is down hands its request to the other one.
  bool get failover => throw _privateConstructorUsedError;

  /// The model id each provider uses for each tier.
  AiModelIds get models => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiProviderInfoCopyWith<AiProviderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiProviderInfoCopyWith<$Res> {
  factory $AiProviderInfoCopyWith(
          AiProviderInfo value, $Res Function(AiProviderInfo) then) =
      _$AiProviderInfoCopyWithImpl<$Res, AiProviderInfo>;
  @useResult
  $Res call(
      {String provider,
      List<String> available,
      bool failover,
      AiModelIds models});

  $AiModelIdsCopyWith<$Res> get models;
}

/// @nodoc
class _$AiProviderInfoCopyWithImpl<$Res, $Val extends AiProviderInfo>
    implements $AiProviderInfoCopyWith<$Res> {
  _$AiProviderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? available = null,
    Object? failover = null,
    Object? models = null,
  }) {
    return _then(_value.copyWith(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failover: null == failover
          ? _value.failover
          : failover // ignore: cast_nullable_to_non_nullable
              as bool,
      models: null == models
          ? _value.models
          : models // ignore: cast_nullable_to_non_nullable
              as AiModelIds,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AiModelIdsCopyWith<$Res> get models {
    return $AiModelIdsCopyWith<$Res>(_value.models, (value) {
      return _then(_value.copyWith(models: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AiProviderInfoImplCopyWith<$Res>
    implements $AiProviderInfoCopyWith<$Res> {
  factory _$$AiProviderInfoImplCopyWith(_$AiProviderInfoImpl value,
          $Res Function(_$AiProviderInfoImpl) then) =
      __$$AiProviderInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String provider,
      List<String> available,
      bool failover,
      AiModelIds models});

  @override
  $AiModelIdsCopyWith<$Res> get models;
}

/// @nodoc
class __$$AiProviderInfoImplCopyWithImpl<$Res>
    extends _$AiProviderInfoCopyWithImpl<$Res, _$AiProviderInfoImpl>
    implements _$$AiProviderInfoImplCopyWith<$Res> {
  __$$AiProviderInfoImplCopyWithImpl(
      _$AiProviderInfoImpl _value, $Res Function(_$AiProviderInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? available = null,
    Object? failover = null,
    Object? models = null,
  }) {
    return _then(_$AiProviderInfoImpl(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value._available
          : available // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failover: null == failover
          ? _value.failover
          : failover // ignore: cast_nullable_to_non_nullable
              as bool,
      models: null == models
          ? _value.models
          : models // ignore: cast_nullable_to_non_nullable
              as AiModelIds,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiProviderInfoImpl implements _AiProviderInfo {
  const _$AiProviderInfoImpl(
      {required this.provider,
      final List<String> available = const <String>[],
      this.failover = true,
      this.models = const AiModelIds()})
      : _available = available;

  factory _$AiProviderInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiProviderInfoImplFromJson(json);

  @override
  final String provider;

  /// Every provider with at least one API key configured — the ones that can
  /// be selected.
  final List<String> _available;

  /// Every provider with at least one API key configured — the ones that can
  /// be selected.
  @override
  @JsonKey()
  List<String> get available {
    if (_available is EqualUnmodifiableListView) return _available;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_available);
  }

  /// Whether a provider that is down hands its request to the other one.
  @override
  @JsonKey()
  final bool failover;

  /// The model id each provider uses for each tier.
  @override
  @JsonKey()
  final AiModelIds models;

  @override
  String toString() {
    return 'AiProviderInfo(provider: $provider, available: $available, failover: $failover, models: $models)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiProviderInfoImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            const DeepCollectionEquality()
                .equals(other._available, _available) &&
            (identical(other.failover, failover) ||
                other.failover == failover) &&
            (identical(other.models, models) || other.models == models));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, provider,
      const DeepCollectionEquality().hash(_available), failover, models);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiProviderInfoImplCopyWith<_$AiProviderInfoImpl> get copyWith =>
      __$$AiProviderInfoImplCopyWithImpl<_$AiProviderInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiProviderInfoImplToJson(
      this,
    );
  }
}

abstract class _AiProviderInfo implements AiProviderInfo {
  const factory _AiProviderInfo(
      {required final String provider,
      final List<String> available,
      final bool failover,
      final AiModelIds models}) = _$AiProviderInfoImpl;

  factory _AiProviderInfo.fromJson(Map<String, dynamic> json) =
      _$AiProviderInfoImpl.fromJson;

  @override
  String get provider;
  @override

  /// Every provider with at least one API key configured — the ones that can
  /// be selected.
  List<String> get available;
  @override

  /// Whether a provider that is down hands its request to the other one.
  bool get failover;
  @override

  /// The model id each provider uses for each tier.
  AiModelIds get models;
  @override
  @JsonKey(ignore: true)
  _$$AiProviderInfoImplCopyWith<_$AiProviderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
