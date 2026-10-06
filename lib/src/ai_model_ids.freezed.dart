// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_model_ids.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AiModelIds _$AiModelIdsFromJson(Map<String, dynamic> json) {
  return _AiModelIds.fromJson(json);
}

/// @nodoc
mixin _$AiModelIds {
  String get geminiFlash => throw _privateConstructorUsedError;
  String get geminiPro => throw _privateConstructorUsedError;
  String get groqFlash => throw _privateConstructorUsedError;
  String get groqPro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiModelIdsCopyWith<AiModelIds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiModelIdsCopyWith<$Res> {
  factory $AiModelIdsCopyWith(
          AiModelIds value, $Res Function(AiModelIds) then) =
      _$AiModelIdsCopyWithImpl<$Res, AiModelIds>;
  @useResult
  $Res call(
      {String geminiFlash, String geminiPro, String groqFlash, String groqPro});
}

/// @nodoc
class _$AiModelIdsCopyWithImpl<$Res, $Val extends AiModelIds>
    implements $AiModelIdsCopyWith<$Res> {
  _$AiModelIdsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geminiFlash = null,
    Object? geminiPro = null,
    Object? groqFlash = null,
    Object? groqPro = null,
  }) {
    return _then(_value.copyWith(
      geminiFlash: null == geminiFlash
          ? _value.geminiFlash
          : geminiFlash // ignore: cast_nullable_to_non_nullable
              as String,
      geminiPro: null == geminiPro
          ? _value.geminiPro
          : geminiPro // ignore: cast_nullable_to_non_nullable
              as String,
      groqFlash: null == groqFlash
          ? _value.groqFlash
          : groqFlash // ignore: cast_nullable_to_non_nullable
              as String,
      groqPro: null == groqPro
          ? _value.groqPro
          : groqPro // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiModelIdsImplCopyWith<$Res>
    implements $AiModelIdsCopyWith<$Res> {
  factory _$$AiModelIdsImplCopyWith(
          _$AiModelIdsImpl value, $Res Function(_$AiModelIdsImpl) then) =
      __$$AiModelIdsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String geminiFlash, String geminiPro, String groqFlash, String groqPro});
}

/// @nodoc
class __$$AiModelIdsImplCopyWithImpl<$Res>
    extends _$AiModelIdsCopyWithImpl<$Res, _$AiModelIdsImpl>
    implements _$$AiModelIdsImplCopyWith<$Res> {
  __$$AiModelIdsImplCopyWithImpl(
      _$AiModelIdsImpl _value, $Res Function(_$AiModelIdsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geminiFlash = null,
    Object? geminiPro = null,
    Object? groqFlash = null,
    Object? groqPro = null,
  }) {
    return _then(_$AiModelIdsImpl(
      geminiFlash: null == geminiFlash
          ? _value.geminiFlash
          : geminiFlash // ignore: cast_nullable_to_non_nullable
              as String,
      geminiPro: null == geminiPro
          ? _value.geminiPro
          : geminiPro // ignore: cast_nullable_to_non_nullable
              as String,
      groqFlash: null == groqFlash
          ? _value.groqFlash
          : groqFlash // ignore: cast_nullable_to_non_nullable
              as String,
      groqPro: null == groqPro
          ? _value.groqPro
          : groqPro // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiModelIdsImpl extends _AiModelIds {
  const _$AiModelIdsImpl(
      {this.geminiFlash = 'gemini-3.6-flash',
      this.geminiPro = 'gemini-3.1-pro',
      this.groqFlash = 'llama-3.3-70b-versatile',
      this.groqPro = 'openai/gpt-oss-120b'})
      : super._();

  factory _$AiModelIdsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiModelIdsImplFromJson(json);

  @override
  @JsonKey()
  final String geminiFlash;
  @override
  @JsonKey()
  final String geminiPro;
  @override
  @JsonKey()
  final String groqFlash;
  @override
  @JsonKey()
  final String groqPro;

  @override
  String toString() {
    return 'AiModelIds(geminiFlash: $geminiFlash, geminiPro: $geminiPro, groqFlash: $groqFlash, groqPro: $groqPro)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiModelIdsImpl &&
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
  int get hashCode =>
      Object.hash(runtimeType, geminiFlash, geminiPro, groqFlash, groqPro);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiModelIdsImplCopyWith<_$AiModelIdsImpl> get copyWith =>
      __$$AiModelIdsImplCopyWithImpl<_$AiModelIdsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiModelIdsImplToJson(
      this,
    );
  }
}

abstract class _AiModelIds extends AiModelIds {
  const factory _AiModelIds(
      {final String geminiFlash,
      final String geminiPro,
      final String groqFlash,
      final String groqPro}) = _$AiModelIdsImpl;
  const _AiModelIds._() : super._();

  factory _AiModelIds.fromJson(Map<String, dynamic> json) =
      _$AiModelIdsImpl.fromJson;

  @override
  String get geminiFlash;
  @override
  String get geminiPro;
  @override
  String get groqFlash;
  @override
  String get groqPro;
  @override
  @JsonKey(ignore: true)
  _$$AiModelIdsImplCopyWith<_$AiModelIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
