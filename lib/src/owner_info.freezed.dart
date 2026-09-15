// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OwnerInfo _$OwnerInfoFromJson(Map<String, dynamic> json) {
  return _OwnerInfo.fromJson(json);
}

/// @nodoc
mixin _$OwnerInfo {
  String get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerInfoCopyWith<OwnerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerInfoCopyWith<$Res> {
  factory $OwnerInfoCopyWith(OwnerInfo value, $Res Function(OwnerInfo) then) =
      _$OwnerInfoCopyWithImpl<$Res, OwnerInfo>;
  @useResult
  $Res call(
      {String id, String? username, String? displayName, String? avatarUrl});
}

/// @nodoc
class _$OwnerInfoCopyWithImpl<$Res, $Val extends OwnerInfo>
    implements $OwnerInfoCopyWith<$Res> {
  _$OwnerInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = freezed,
    Object? displayName = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerInfoImplCopyWith<$Res>
    implements $OwnerInfoCopyWith<$Res> {
  factory _$$OwnerInfoImplCopyWith(
          _$OwnerInfoImpl value, $Res Function(_$OwnerInfoImpl) then) =
      __$$OwnerInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String? username, String? displayName, String? avatarUrl});
}

/// @nodoc
class __$$OwnerInfoImplCopyWithImpl<$Res>
    extends _$OwnerInfoCopyWithImpl<$Res, _$OwnerInfoImpl>
    implements _$$OwnerInfoImplCopyWith<$Res> {
  __$$OwnerInfoImplCopyWithImpl(
      _$OwnerInfoImpl _value, $Res Function(_$OwnerInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = freezed,
    Object? displayName = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$OwnerInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerInfoImpl extends _OwnerInfo {
  const _$OwnerInfoImpl(
      {required this.id, this.username, this.displayName, this.avatarUrl})
      : super._();

  factory _$OwnerInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String? username;
  @override
  final String? displayName;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'OwnerInfo(id: $id, username: $username, displayName: $displayName, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, displayName, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerInfoImplCopyWith<_$OwnerInfoImpl> get copyWith =>
      __$$OwnerInfoImplCopyWithImpl<_$OwnerInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerInfoImplToJson(
      this,
    );
  }
}

abstract class _OwnerInfo extends OwnerInfo {
  const factory _OwnerInfo(
      {required final String id,
      final String? username,
      final String? displayName,
      final String? avatarUrl}) = _$OwnerInfoImpl;
  const _OwnerInfo._() : super._();

  factory _OwnerInfo.fromJson(Map<String, dynamic> json) =
      _$OwnerInfoImpl.fromJson;

  @override
  String get id;
  @override
  String? get username;
  @override
  String? get displayName;
  @override
  String? get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$OwnerInfoImplCopyWith<_$OwnerInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
