// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_prompts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AiPrompts _$AiPromptsFromJson(Map<String, dynamic> json) {
  return _AiPrompts.fromJson(json);
}

/// @nodoc
mixin _$AiPrompts {
  /// The opening of the review prompt: who the reviewer is and what the
  /// project is, including the versions it is on.
  String get reviewIntro => throw _privateConstructorUsedError;

  /// The project conventions the review checks against — a Markdown list.
  String get reviewConventions => throw _privateConstructorUsedError;

  /// The opening of the translation prompt: what app the strings are for.
  String get translatorIntro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiPromptsCopyWith<AiPrompts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiPromptsCopyWith<$Res> {
  factory $AiPromptsCopyWith(AiPrompts value, $Res Function(AiPrompts) then) =
      _$AiPromptsCopyWithImpl<$Res, AiPrompts>;
  @useResult
  $Res call(
      {String reviewIntro, String reviewConventions, String translatorIntro});
}

/// @nodoc
class _$AiPromptsCopyWithImpl<$Res, $Val extends AiPrompts>
    implements $AiPromptsCopyWith<$Res> {
  _$AiPromptsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewIntro = null,
    Object? reviewConventions = null,
    Object? translatorIntro = null,
  }) {
    return _then(_value.copyWith(
      reviewIntro: null == reviewIntro
          ? _value.reviewIntro
          : reviewIntro // ignore: cast_nullable_to_non_nullable
              as String,
      reviewConventions: null == reviewConventions
          ? _value.reviewConventions
          : reviewConventions // ignore: cast_nullable_to_non_nullable
              as String,
      translatorIntro: null == translatorIntro
          ? _value.translatorIntro
          : translatorIntro // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiPromptsImplCopyWith<$Res>
    implements $AiPromptsCopyWith<$Res> {
  factory _$$AiPromptsImplCopyWith(
          _$AiPromptsImpl value, $Res Function(_$AiPromptsImpl) then) =
      __$$AiPromptsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reviewIntro, String reviewConventions, String translatorIntro});
}

/// @nodoc
class __$$AiPromptsImplCopyWithImpl<$Res>
    extends _$AiPromptsCopyWithImpl<$Res, _$AiPromptsImpl>
    implements _$$AiPromptsImplCopyWith<$Res> {
  __$$AiPromptsImplCopyWithImpl(
      _$AiPromptsImpl _value, $Res Function(_$AiPromptsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewIntro = null,
    Object? reviewConventions = null,
    Object? translatorIntro = null,
  }) {
    return _then(_$AiPromptsImpl(
      reviewIntro: null == reviewIntro
          ? _value.reviewIntro
          : reviewIntro // ignore: cast_nullable_to_non_nullable
              as String,
      reviewConventions: null == reviewConventions
          ? _value.reviewConventions
          : reviewConventions // ignore: cast_nullable_to_non_nullable
              as String,
      translatorIntro: null == translatorIntro
          ? _value.translatorIntro
          : translatorIntro // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiPromptsImpl extends _AiPrompts {
  const _$AiPromptsImpl(
      {required this.reviewIntro,
      required this.reviewConventions,
      required this.translatorIntro})
      : super._();

  factory _$AiPromptsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiPromptsImplFromJson(json);

  /// The opening of the review prompt: who the reviewer is and what the
  /// project is, including the versions it is on.
  @override
  final String reviewIntro;

  /// The project conventions the review checks against — a Markdown list.
  @override
  final String reviewConventions;

  /// The opening of the translation prompt: what app the strings are for.
  @override
  final String translatorIntro;

  @override
  String toString() {
    return 'AiPrompts(reviewIntro: $reviewIntro, reviewConventions: $reviewConventions, translatorIntro: $translatorIntro)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiPromptsImpl &&
            (identical(other.reviewIntro, reviewIntro) ||
                other.reviewIntro == reviewIntro) &&
            (identical(other.reviewConventions, reviewConventions) ||
                other.reviewConventions == reviewConventions) &&
            (identical(other.translatorIntro, translatorIntro) ||
                other.translatorIntro == translatorIntro));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reviewIntro, reviewConventions, translatorIntro);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiPromptsImplCopyWith<_$AiPromptsImpl> get copyWith =>
      __$$AiPromptsImplCopyWithImpl<_$AiPromptsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiPromptsImplToJson(
      this,
    );
  }
}

abstract class _AiPrompts extends AiPrompts {
  const factory _AiPrompts(
      {required final String reviewIntro,
      required final String reviewConventions,
      required final String translatorIntro}) = _$AiPromptsImpl;
  const _AiPrompts._() : super._();

  factory _AiPrompts.fromJson(Map<String, dynamic> json) =
      _$AiPromptsImpl.fromJson;

  @override

  /// The opening of the review prompt: who the reviewer is and what the
  /// project is, including the versions it is on.
  String get reviewIntro;
  @override

  /// The project conventions the review checks against — a Markdown list.
  String get reviewConventions;
  @override

  /// The opening of the translation prompt: what app the strings are for.
  String get translatorIntro;
  @override
  @JsonKey(ignore: true)
  _$$AiPromptsImplCopyWith<_$AiPromptsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AiPromptsSetParams _$AiPromptsSetParamsFromJson(Map<String, dynamic> json) {
  return _AiPromptsSetParams.fromJson(json);
}

/// @nodoc
mixin _$AiPromptsSetParams {
  AiPrompts get prompts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiPromptsSetParamsCopyWith<AiPromptsSetParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiPromptsSetParamsCopyWith<$Res> {
  factory $AiPromptsSetParamsCopyWith(
          AiPromptsSetParams value, $Res Function(AiPromptsSetParams) then) =
      _$AiPromptsSetParamsCopyWithImpl<$Res, AiPromptsSetParams>;
  @useResult
  $Res call({AiPrompts prompts});

  $AiPromptsCopyWith<$Res> get prompts;
}

/// @nodoc
class _$AiPromptsSetParamsCopyWithImpl<$Res, $Val extends AiPromptsSetParams>
    implements $AiPromptsSetParamsCopyWith<$Res> {
  _$AiPromptsSetParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompts = null,
  }) {
    return _then(_value.copyWith(
      prompts: null == prompts
          ? _value.prompts
          : prompts // ignore: cast_nullable_to_non_nullable
              as AiPrompts,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AiPromptsCopyWith<$Res> get prompts {
    return $AiPromptsCopyWith<$Res>(_value.prompts, (value) {
      return _then(_value.copyWith(prompts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AiPromptsSetParamsImplCopyWith<$Res>
    implements $AiPromptsSetParamsCopyWith<$Res> {
  factory _$$AiPromptsSetParamsImplCopyWith(_$AiPromptsSetParamsImpl value,
          $Res Function(_$AiPromptsSetParamsImpl) then) =
      __$$AiPromptsSetParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AiPrompts prompts});

  @override
  $AiPromptsCopyWith<$Res> get prompts;
}

/// @nodoc
class __$$AiPromptsSetParamsImplCopyWithImpl<$Res>
    extends _$AiPromptsSetParamsCopyWithImpl<$Res, _$AiPromptsSetParamsImpl>
    implements _$$AiPromptsSetParamsImplCopyWith<$Res> {
  __$$AiPromptsSetParamsImplCopyWithImpl(_$AiPromptsSetParamsImpl _value,
      $Res Function(_$AiPromptsSetParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompts = null,
  }) {
    return _then(_$AiPromptsSetParamsImpl(
      prompts: null == prompts
          ? _value.prompts
          : prompts // ignore: cast_nullable_to_non_nullable
              as AiPrompts,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiPromptsSetParamsImpl implements _AiPromptsSetParams {
  const _$AiPromptsSetParamsImpl({required this.prompts});

  factory _$AiPromptsSetParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiPromptsSetParamsImplFromJson(json);

  @override
  final AiPrompts prompts;

  @override
  String toString() {
    return 'AiPromptsSetParams(prompts: $prompts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiPromptsSetParamsImpl &&
            (identical(other.prompts, prompts) || other.prompts == prompts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, prompts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiPromptsSetParamsImplCopyWith<_$AiPromptsSetParamsImpl> get copyWith =>
      __$$AiPromptsSetParamsImplCopyWithImpl<_$AiPromptsSetParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiPromptsSetParamsImplToJson(
      this,
    );
  }
}

abstract class _AiPromptsSetParams implements AiPromptsSetParams {
  const factory _AiPromptsSetParams({required final AiPrompts prompts}) =
      _$AiPromptsSetParamsImpl;

  factory _AiPromptsSetParams.fromJson(Map<String, dynamic> json) =
      _$AiPromptsSetParamsImpl.fromJson;

  @override
  AiPrompts get prompts;
  @override
  @JsonKey(ignore: true)
  _$$AiPromptsSetParamsImplCopyWith<_$AiPromptsSetParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AiPromptsInfo _$AiPromptsInfoFromJson(Map<String, dynamic> json) {
  return _AiPromptsInfo.fromJson(json);
}

/// @nodoc
mixin _$AiPromptsInfo {
  AiPrompts get prompts => throw _privateConstructorUsedError;
  AiPrompts get defaults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiPromptsInfoCopyWith<AiPromptsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiPromptsInfoCopyWith<$Res> {
  factory $AiPromptsInfoCopyWith(
          AiPromptsInfo value, $Res Function(AiPromptsInfo) then) =
      _$AiPromptsInfoCopyWithImpl<$Res, AiPromptsInfo>;
  @useResult
  $Res call({AiPrompts prompts, AiPrompts defaults});

  $AiPromptsCopyWith<$Res> get prompts;
  $AiPromptsCopyWith<$Res> get defaults;
}

/// @nodoc
class _$AiPromptsInfoCopyWithImpl<$Res, $Val extends AiPromptsInfo>
    implements $AiPromptsInfoCopyWith<$Res> {
  _$AiPromptsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompts = null,
    Object? defaults = null,
  }) {
    return _then(_value.copyWith(
      prompts: null == prompts
          ? _value.prompts
          : prompts // ignore: cast_nullable_to_non_nullable
              as AiPrompts,
      defaults: null == defaults
          ? _value.defaults
          : defaults // ignore: cast_nullable_to_non_nullable
              as AiPrompts,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AiPromptsCopyWith<$Res> get prompts {
    return $AiPromptsCopyWith<$Res>(_value.prompts, (value) {
      return _then(_value.copyWith(prompts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AiPromptsCopyWith<$Res> get defaults {
    return $AiPromptsCopyWith<$Res>(_value.defaults, (value) {
      return _then(_value.copyWith(defaults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AiPromptsInfoImplCopyWith<$Res>
    implements $AiPromptsInfoCopyWith<$Res> {
  factory _$$AiPromptsInfoImplCopyWith(
          _$AiPromptsInfoImpl value, $Res Function(_$AiPromptsInfoImpl) then) =
      __$$AiPromptsInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AiPrompts prompts, AiPrompts defaults});

  @override
  $AiPromptsCopyWith<$Res> get prompts;
  @override
  $AiPromptsCopyWith<$Res> get defaults;
}

/// @nodoc
class __$$AiPromptsInfoImplCopyWithImpl<$Res>
    extends _$AiPromptsInfoCopyWithImpl<$Res, _$AiPromptsInfoImpl>
    implements _$$AiPromptsInfoImplCopyWith<$Res> {
  __$$AiPromptsInfoImplCopyWithImpl(
      _$AiPromptsInfoImpl _value, $Res Function(_$AiPromptsInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompts = null,
    Object? defaults = null,
  }) {
    return _then(_$AiPromptsInfoImpl(
      prompts: null == prompts
          ? _value.prompts
          : prompts // ignore: cast_nullable_to_non_nullable
              as AiPrompts,
      defaults: null == defaults
          ? _value.defaults
          : defaults // ignore: cast_nullable_to_non_nullable
              as AiPrompts,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiPromptsInfoImpl implements _AiPromptsInfo {
  const _$AiPromptsInfoImpl({required this.prompts, required this.defaults});

  factory _$AiPromptsInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiPromptsInfoImplFromJson(json);

  @override
  final AiPrompts prompts;
  @override
  final AiPrompts defaults;

  @override
  String toString() {
    return 'AiPromptsInfo(prompts: $prompts, defaults: $defaults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiPromptsInfoImpl &&
            (identical(other.prompts, prompts) || other.prompts == prompts) &&
            (identical(other.defaults, defaults) ||
                other.defaults == defaults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, prompts, defaults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiPromptsInfoImplCopyWith<_$AiPromptsInfoImpl> get copyWith =>
      __$$AiPromptsInfoImplCopyWithImpl<_$AiPromptsInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiPromptsInfoImplToJson(
      this,
    );
  }
}

abstract class _AiPromptsInfo implements AiPromptsInfo {
  const factory _AiPromptsInfo(
      {required final AiPrompts prompts,
      required final AiPrompts defaults}) = _$AiPromptsInfoImpl;

  factory _AiPromptsInfo.fromJson(Map<String, dynamic> json) =
      _$AiPromptsInfoImpl.fromJson;

  @override
  AiPrompts get prompts;
  @override
  AiPrompts get defaults;
  @override
  @JsonKey(ignore: true)
  _$$AiPromptsInfoImplCopyWith<_$AiPromptsInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
