// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zentao_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ZentaoUser _$ZentaoUserFromJson(Map<String, dynamic> json) {
  return _ZentaoUser.fromJson(json);
}

/// @nodoc
mixin _$ZentaoUser {
  String get account => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  int? get module => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZentaoUserCopyWith<ZentaoUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZentaoUserCopyWith<$Res> {
  factory $ZentaoUserCopyWith(
          ZentaoUser value, $Res Function(ZentaoUser) then) =
      _$ZentaoUserCopyWithImpl<$Res, ZentaoUser>;
  @useResult
  $Res call({String account, String password, int? module});
}

/// @nodoc
class _$ZentaoUserCopyWithImpl<$Res, $Val extends ZentaoUser>
    implements $ZentaoUserCopyWith<$Res> {
  _$ZentaoUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? password = null,
    Object? module = freezed,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZentaoUserImplCopyWith<$Res>
    implements $ZentaoUserCopyWith<$Res> {
  factory _$$ZentaoUserImplCopyWith(
          _$ZentaoUserImpl value, $Res Function(_$ZentaoUserImpl) then) =
      __$$ZentaoUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String account, String password, int? module});
}

/// @nodoc
class __$$ZentaoUserImplCopyWithImpl<$Res>
    extends _$ZentaoUserCopyWithImpl<$Res, _$ZentaoUserImpl>
    implements _$$ZentaoUserImplCopyWith<$Res> {
  __$$ZentaoUserImplCopyWithImpl(
      _$ZentaoUserImpl _value, $Res Function(_$ZentaoUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? password = null,
    Object? module = freezed,
  }) {
    return _then(_$ZentaoUserImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZentaoUserImpl implements _ZentaoUser {
  const _$ZentaoUserImpl(
      {required this.account, required this.password, this.module});

  factory _$ZentaoUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZentaoUserImplFromJson(json);

  @override
  final String account;
  @override
  final String password;
  @override
  final int? module;

  @override
  String toString() {
    return 'ZentaoUser(account: $account, password: $password, module: $module)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZentaoUserImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.module, module) || other.module == module));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account, password, module);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZentaoUserImplCopyWith<_$ZentaoUserImpl> get copyWith =>
      __$$ZentaoUserImplCopyWithImpl<_$ZentaoUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZentaoUserImplToJson(
      this,
    );
  }
}

abstract class _ZentaoUser implements ZentaoUser {
  const factory _ZentaoUser(
      {required final String account,
      required final String password,
      final int? module}) = _$ZentaoUserImpl;

  factory _ZentaoUser.fromJson(Map<String, dynamic> json) =
      _$ZentaoUserImpl.fromJson;

  @override
  String get account;
  @override
  String get password;
  @override
  int? get module;
  @override
  @JsonKey(ignore: true)
  _$$ZentaoUserImplCopyWith<_$ZentaoUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
