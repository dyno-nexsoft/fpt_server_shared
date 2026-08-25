// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_key_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ApiKeyInfo _$ApiKeyInfoFromJson(Map<String, dynamic> json) {
  return _ApiKeyInfo.fromJson(json);
}

/// @nodoc
mixin _$ApiKeyInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get keyHash => throw _privateConstructorUsedError;

  /// `List<String>`, not `List<Permission>`: each entry is a `Permission`'s
  /// Dart-convention `.name` (`invokeDangerous`, not [Permission.toWire]'s
  /// `invoke_dangerous`) — this is how API key scopes are actually stored
  /// in Hive today, a separate, pre-existing format from the REST-facing
  /// wire value `toWire` fixes elsewhere. Kept as free text rather than
  /// `List<Permission>` so an unparseable scope round-trips instead of
  /// silently disappearing.
  List<String> get scopes => throw _privateConstructorUsedError;

  /// A Discord snowflake, always read as a string — routinely exceeds the
  /// 2^53 precision limit of a browser's JS engine. This reader
  /// additionally tolerates a raw JSON number for older persisted records.
  @JsonKey(fromJson: _discordUserIdFromJson)
  String? get discordUserId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiKeyInfoCopyWith<ApiKeyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiKeyInfoCopyWith<$Res> {
  factory $ApiKeyInfoCopyWith(
    ApiKeyInfo value,
    $Res Function(ApiKeyInfo) then,
  ) = _$ApiKeyInfoCopyWithImpl<$Res, ApiKeyInfo>;
  @useResult
  $Res call({
    String id,
    String name,
    String keyHash,
    List<String> scopes,
    @JsonKey(fromJson: _discordUserIdFromJson) String? discordUserId,
  });
}

/// @nodoc
class _$ApiKeyInfoCopyWithImpl<$Res, $Val extends ApiKeyInfo>
    implements $ApiKeyInfoCopyWith<$Res> {
  _$ApiKeyInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? keyHash = null,
    Object? scopes = null,
    Object? discordUserId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            keyHash: null == keyHash
                ? _value.keyHash
                : keyHash // ignore: cast_nullable_to_non_nullable
                      as String,
            scopes: null == scopes
                ? _value.scopes
                : scopes // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            discordUserId: freezed == discordUserId
                ? _value.discordUserId
                : discordUserId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiKeyInfoImplCopyWith<$Res>
    implements $ApiKeyInfoCopyWith<$Res> {
  factory _$$ApiKeyInfoImplCopyWith(
    _$ApiKeyInfoImpl value,
    $Res Function(_$ApiKeyInfoImpl) then,
  ) = __$$ApiKeyInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String keyHash,
    List<String> scopes,
    @JsonKey(fromJson: _discordUserIdFromJson) String? discordUserId,
  });
}

/// @nodoc
class __$$ApiKeyInfoImplCopyWithImpl<$Res>
    extends _$ApiKeyInfoCopyWithImpl<$Res, _$ApiKeyInfoImpl>
    implements _$$ApiKeyInfoImplCopyWith<$Res> {
  __$$ApiKeyInfoImplCopyWithImpl(
    _$ApiKeyInfoImpl _value,
    $Res Function(_$ApiKeyInfoImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? keyHash = null,
    Object? scopes = null,
    Object? discordUserId = freezed,
  }) {
    return _then(
      _$ApiKeyInfoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        keyHash: null == keyHash
            ? _value.keyHash
            : keyHash // ignore: cast_nullable_to_non_nullable
                  as String,
        scopes: null == scopes
            ? _value._scopes
            : scopes // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        discordUserId: freezed == discordUserId
            ? _value.discordUserId
            : discordUserId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiKeyInfoImpl extends _ApiKeyInfo {
  const _$ApiKeyInfoImpl({
    required this.id,
    required this.name,
    required this.keyHash,
    final List<String> scopes = const [],
    @JsonKey(fromJson: _discordUserIdFromJson) this.discordUserId,
  }) : _scopes = scopes,
       super._();

  factory _$ApiKeyInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiKeyInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String keyHash;

  /// `List<String>`, not `List<Permission>`: each entry is a `Permission`'s
  /// Dart-convention `.name` (`invokeDangerous`, not [Permission.toWire]'s
  /// `invoke_dangerous`) — this is how API key scopes are actually stored
  /// in Hive today, a separate, pre-existing format from the REST-facing
  /// wire value `toWire` fixes elsewhere. Kept as free text rather than
  /// `List<Permission>` so an unparseable scope round-trips instead of
  /// silently disappearing.
  final List<String> _scopes;

  /// `List<String>`, not `List<Permission>`: each entry is a `Permission`'s
  /// Dart-convention `.name` (`invokeDangerous`, not [Permission.toWire]'s
  /// `invoke_dangerous`) — this is how API key scopes are actually stored
  /// in Hive today, a separate, pre-existing format from the REST-facing
  /// wire value `toWire` fixes elsewhere. Kept as free text rather than
  /// `List<Permission>` so an unparseable scope round-trips instead of
  /// silently disappearing.
  @override
  @JsonKey()
  List<String> get scopes {
    if (_scopes is EqualUnmodifiableListView) return _scopes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scopes);
  }

  /// A Discord snowflake, always read as a string — routinely exceeds the
  /// 2^53 precision limit of a browser's JS engine. This reader
  /// additionally tolerates a raw JSON number for older persisted records.
  @override
  @JsonKey(fromJson: _discordUserIdFromJson)
  final String? discordUserId;

  @override
  String toString() {
    return 'ApiKeyInfo(id: $id, name: $name, keyHash: $keyHash, scopes: $scopes, discordUserId: $discordUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiKeyInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.keyHash, keyHash) || other.keyHash == keyHash) &&
            const DeepCollectionEquality().equals(other._scopes, _scopes) &&
            (identical(other.discordUserId, discordUserId) ||
                other.discordUserId == discordUserId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    keyHash,
    const DeepCollectionEquality().hash(_scopes),
    discordUserId,
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiKeyInfoImplCopyWith<_$ApiKeyInfoImpl> get copyWith =>
      __$$ApiKeyInfoImplCopyWithImpl<_$ApiKeyInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiKeyInfoImplToJson(this);
  }
}

abstract class _ApiKeyInfo extends ApiKeyInfo {
  const factory _ApiKeyInfo({
    required final String id,
    required final String name,
    required final String keyHash,
    final List<String> scopes,
    @JsonKey(fromJson: _discordUserIdFromJson) final String? discordUserId,
  }) = _$ApiKeyInfoImpl;
  const _ApiKeyInfo._() : super._();

  factory _ApiKeyInfo.fromJson(Map<String, dynamic> json) =
      _$ApiKeyInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get keyHash;
  @override
  /// `List<String>`, not `List<Permission>`: each entry is a `Permission`'s
  /// Dart-convention `.name` (`invokeDangerous`, not [Permission.toWire]'s
  /// `invoke_dangerous`) — this is how API key scopes are actually stored
  /// in Hive today, a separate, pre-existing format from the REST-facing
  /// wire value `toWire` fixes elsewhere. Kept as free text rather than
  /// `List<Permission>` so an unparseable scope round-trips instead of
  /// silently disappearing.
  List<String> get scopes;
  @override
  /// A Discord snowflake, always read as a string — routinely exceeds the
  /// 2^53 precision limit of a browser's JS engine. This reader
  /// additionally tolerates a raw JSON number for older persisted records.
  @JsonKey(fromJson: _discordUserIdFromJson)
  String? get discordUserId;
  @override
  @JsonKey(ignore: true)
  _$$ApiKeyInfoImplCopyWith<_$ApiKeyInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
