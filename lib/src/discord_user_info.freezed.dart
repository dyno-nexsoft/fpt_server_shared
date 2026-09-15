// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discord_user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscordUserInfo _$DiscordUserInfoFromJson(Map<String, dynamic> json) {
  return _DiscordUserInfo.fromJson(json);
}

/// @nodoc
mixin _$DiscordUserInfo {
  String? get username => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscordUserInfoCopyWith<DiscordUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscordUserInfoCopyWith<$Res> {
  factory $DiscordUserInfoCopyWith(
          DiscordUserInfo value, $Res Function(DiscordUserInfo) then) =
      _$DiscordUserInfoCopyWithImpl<$Res, DiscordUserInfo>;
  @useResult
  $Res call({String? username, String? displayName, String? avatarUrl});
}

/// @nodoc
class _$DiscordUserInfoCopyWithImpl<$Res, $Val extends DiscordUserInfo>
    implements $DiscordUserInfoCopyWith<$Res> {
  _$DiscordUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? displayName = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$DiscordUserInfoImplCopyWith<$Res>
    implements $DiscordUserInfoCopyWith<$Res> {
  factory _$$DiscordUserInfoImplCopyWith(_$DiscordUserInfoImpl value,
          $Res Function(_$DiscordUserInfoImpl) then) =
      __$$DiscordUserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? displayName, String? avatarUrl});
}

/// @nodoc
class __$$DiscordUserInfoImplCopyWithImpl<$Res>
    extends _$DiscordUserInfoCopyWithImpl<$Res, _$DiscordUserInfoImpl>
    implements _$$DiscordUserInfoImplCopyWith<$Res> {
  __$$DiscordUserInfoImplCopyWithImpl(
      _$DiscordUserInfoImpl _value, $Res Function(_$DiscordUserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? displayName = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$DiscordUserInfoImpl(
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
class _$DiscordUserInfoImpl extends _DiscordUserInfo {
  const _$DiscordUserInfoImpl({this.username, this.displayName, this.avatarUrl})
      : super._();

  factory _$DiscordUserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscordUserInfoImplFromJson(json);

  @override
  final String? username;
  @override
  final String? displayName;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'DiscordUserInfo(username: $username, displayName: $displayName, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscordUserInfoImpl &&
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
      Object.hash(runtimeType, username, displayName, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscordUserInfoImplCopyWith<_$DiscordUserInfoImpl> get copyWith =>
      __$$DiscordUserInfoImplCopyWithImpl<_$DiscordUserInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscordUserInfoImplToJson(
      this,
    );
  }
}

abstract class _DiscordUserInfo extends DiscordUserInfo {
  const factory _DiscordUserInfo(
      {final String? username,
      final String? displayName,
      final String? avatarUrl}) = _$DiscordUserInfoImpl;
  const _DiscordUserInfo._() : super._();

  factory _DiscordUserInfo.fromJson(Map<String, dynamic> json) =
      _$DiscordUserInfoImpl.fromJson;

  @override
  String? get username;
  @override
  String? get displayName;
  @override
  String? get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$DiscordUserInfoImplCopyWith<_$DiscordUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
