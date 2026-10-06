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
  $Res call({String provider, bool? failover});
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
  $Res call({String provider, bool? failover});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiProviderSetParamsImpl implements _AiProviderSetParams {
  const _$AiProviderSetParamsImpl({required this.provider, this.failover});

  factory _$AiProviderSetParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiProviderSetParamsImplFromJson(json);

  /// The backend to activate: `gemini` or `groq`.
  @override
  final String provider;

  /// Whether to try the other provider when the active one is down. Null
  /// leaves it as it is.
  @override
  final bool? failover;

  @override
  String toString() {
    return 'AiProviderSetParams(provider: $provider, failover: $failover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiProviderSetParamsImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.failover, failover) ||
                other.failover == failover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, provider, failover);

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
      final bool? failover}) = _$AiProviderSetParamsImpl;

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
  $Res call({String provider, List<String> available, bool failover});
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
    ) as $Val);
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
  $Res call({String provider, List<String> available, bool failover});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiProviderInfoImpl implements _AiProviderInfo {
  const _$AiProviderInfoImpl(
      {required this.provider,
      final List<String> available = const <String>[],
      this.failover = true})
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

  @override
  String toString() {
    return 'AiProviderInfo(provider: $provider, available: $available, failover: $failover)';
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
                other.failover == failover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, provider,
      const DeepCollectionEquality().hash(_available), failover);

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
      final bool failover}) = _$AiProviderInfoImpl;

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
  @JsonKey(ignore: true)
  _$$AiProviderInfoImplCopyWith<_$AiProviderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
