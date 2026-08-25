// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arb_translate_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ArbTranslateResult _$ArbTranslateResultFromJson(Map<String, dynamic> json) {
  return _ArbTranslateResult.fromJson(json);
}

/// @nodoc
mixin _$ArbTranslateResult {
  /// tbchat module folder name, e.g. `social_fi`, `wallet`, `im`.
  String get module => throw _privateConstructorUsedError;

  /// Branch the arb files were read from, and the MR was opened into.
  String get targetBranch => throw _privateConstructorUsedError;

  /// Null when there was nothing missing to translate — no branch/MR made.
  String? get mrUrl => throw _privateConstructorUsedError;
  int get translatedKeyCount => throw _privateConstructorUsedError;
  List<String> get localesUpdated => throw _privateConstructorUsedError;

  /// Keys the AI failed to translate (a batch call errored, or came back
  /// in a shape the parser couldn't use) — still reported rather than
  /// silently dropped, so a partial run doesn't look like a complete one.
  int get failedKeyCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArbTranslateResultCopyWith<ArbTranslateResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArbTranslateResultCopyWith<$Res> {
  factory $ArbTranslateResultCopyWith(
    ArbTranslateResult value,
    $Res Function(ArbTranslateResult) then,
  ) = _$ArbTranslateResultCopyWithImpl<$Res, ArbTranslateResult>;
  @useResult
  $Res call({
    String module,
    String targetBranch,
    String? mrUrl,
    int translatedKeyCount,
    List<String> localesUpdated,
    int failedKeyCount,
  });
}

/// @nodoc
class _$ArbTranslateResultCopyWithImpl<$Res, $Val extends ArbTranslateResult>
    implements $ArbTranslateResultCopyWith<$Res> {
  _$ArbTranslateResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? module = null,
    Object? targetBranch = null,
    Object? mrUrl = freezed,
    Object? translatedKeyCount = null,
    Object? localesUpdated = null,
    Object? failedKeyCount = null,
  }) {
    return _then(
      _value.copyWith(
            module: null == module
                ? _value.module
                : module // ignore: cast_nullable_to_non_nullable
                      as String,
            targetBranch: null == targetBranch
                ? _value.targetBranch
                : targetBranch // ignore: cast_nullable_to_non_nullable
                      as String,
            mrUrl: freezed == mrUrl
                ? _value.mrUrl
                : mrUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            translatedKeyCount: null == translatedKeyCount
                ? _value.translatedKeyCount
                : translatedKeyCount // ignore: cast_nullable_to_non_nullable
                      as int,
            localesUpdated: null == localesUpdated
                ? _value.localesUpdated
                : localesUpdated // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            failedKeyCount: null == failedKeyCount
                ? _value.failedKeyCount
                : failedKeyCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArbTranslateResultImplCopyWith<$Res>
    implements $ArbTranslateResultCopyWith<$Res> {
  factory _$$ArbTranslateResultImplCopyWith(
    _$ArbTranslateResultImpl value,
    $Res Function(_$ArbTranslateResultImpl) then,
  ) = __$$ArbTranslateResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String module,
    String targetBranch,
    String? mrUrl,
    int translatedKeyCount,
    List<String> localesUpdated,
    int failedKeyCount,
  });
}

/// @nodoc
class __$$ArbTranslateResultImplCopyWithImpl<$Res>
    extends _$ArbTranslateResultCopyWithImpl<$Res, _$ArbTranslateResultImpl>
    implements _$$ArbTranslateResultImplCopyWith<$Res> {
  __$$ArbTranslateResultImplCopyWithImpl(
    _$ArbTranslateResultImpl _value,
    $Res Function(_$ArbTranslateResultImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? module = null,
    Object? targetBranch = null,
    Object? mrUrl = freezed,
    Object? translatedKeyCount = null,
    Object? localesUpdated = null,
    Object? failedKeyCount = null,
  }) {
    return _then(
      _$ArbTranslateResultImpl(
        module: null == module
            ? _value.module
            : module // ignore: cast_nullable_to_non_nullable
                  as String,
        targetBranch: null == targetBranch
            ? _value.targetBranch
            : targetBranch // ignore: cast_nullable_to_non_nullable
                  as String,
        mrUrl: freezed == mrUrl
            ? _value.mrUrl
            : mrUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        translatedKeyCount: null == translatedKeyCount
            ? _value.translatedKeyCount
            : translatedKeyCount // ignore: cast_nullable_to_non_nullable
                  as int,
        localesUpdated: null == localesUpdated
            ? _value._localesUpdated
            : localesUpdated // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        failedKeyCount: null == failedKeyCount
            ? _value.failedKeyCount
            : failedKeyCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ArbTranslateResultImpl extends _ArbTranslateResult {
  const _$ArbTranslateResultImpl({
    required this.module,
    required this.targetBranch,
    this.mrUrl,
    this.translatedKeyCount = 0,
    final List<String> localesUpdated = const <String>[],
    this.failedKeyCount = 0,
  }) : _localesUpdated = localesUpdated,
       super._();

  factory _$ArbTranslateResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArbTranslateResultImplFromJson(json);

  /// tbchat module folder name, e.g. `social_fi`, `wallet`, `im`.
  @override
  final String module;

  /// Branch the arb files were read from, and the MR was opened into.
  @override
  final String targetBranch;

  /// Null when there was nothing missing to translate — no branch/MR made.
  @override
  final String? mrUrl;
  @override
  @JsonKey()
  final int translatedKeyCount;
  final List<String> _localesUpdated;
  @override
  @JsonKey()
  List<String> get localesUpdated {
    if (_localesUpdated is EqualUnmodifiableListView) return _localesUpdated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localesUpdated);
  }

  /// Keys the AI failed to translate (a batch call errored, or came back
  /// in a shape the parser couldn't use) — still reported rather than
  /// silently dropped, so a partial run doesn't look like a complete one.
  @override
  @JsonKey()
  final int failedKeyCount;

  @override
  String toString() {
    return 'ArbTranslateResult(module: $module, targetBranch: $targetBranch, mrUrl: $mrUrl, translatedKeyCount: $translatedKeyCount, localesUpdated: $localesUpdated, failedKeyCount: $failedKeyCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArbTranslateResultImpl &&
            (identical(other.module, module) || other.module == module) &&
            (identical(other.targetBranch, targetBranch) ||
                other.targetBranch == targetBranch) &&
            (identical(other.mrUrl, mrUrl) || other.mrUrl == mrUrl) &&
            (identical(other.translatedKeyCount, translatedKeyCount) ||
                other.translatedKeyCount == translatedKeyCount) &&
            const DeepCollectionEquality().equals(
              other._localesUpdated,
              _localesUpdated,
            ) &&
            (identical(other.failedKeyCount, failedKeyCount) ||
                other.failedKeyCount == failedKeyCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    module,
    targetBranch,
    mrUrl,
    translatedKeyCount,
    const DeepCollectionEquality().hash(_localesUpdated),
    failedKeyCount,
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArbTranslateResultImplCopyWith<_$ArbTranslateResultImpl> get copyWith =>
      __$$ArbTranslateResultImplCopyWithImpl<_$ArbTranslateResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ArbTranslateResultImplToJson(this);
  }
}

abstract class _ArbTranslateResult extends ArbTranslateResult {
  const factory _ArbTranslateResult({
    required final String module,
    required final String targetBranch,
    final String? mrUrl,
    final int translatedKeyCount,
    final List<String> localesUpdated,
    final int failedKeyCount,
  }) = _$ArbTranslateResultImpl;
  const _ArbTranslateResult._() : super._();

  factory _ArbTranslateResult.fromJson(Map<String, dynamic> json) =
      _$ArbTranslateResultImpl.fromJson;

  @override
  /// tbchat module folder name, e.g. `social_fi`, `wallet`, `im`.
  String get module;
  @override
  /// Branch the arb files were read from, and the MR was opened into.
  String get targetBranch;
  @override
  /// Null when there was nothing missing to translate — no branch/MR made.
  String? get mrUrl;
  @override
  int get translatedKeyCount;
  @override
  List<String> get localesUpdated;
  @override
  /// Keys the AI failed to translate (a batch call errored, or came back
  /// in a shape the parser couldn't use) — still reported rather than
  /// silently dropped, so a partial run doesn't look like a complete one.
  int get failedKeyCount;
  @override
  @JsonKey(ignore: true)
  _$$ArbTranslateResultImplCopyWith<_$ArbTranslateResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
