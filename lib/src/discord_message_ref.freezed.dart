// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discord_message_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscordMessageRef _$DiscordMessageRefFromJson(Map<String, dynamic> json) {
  return _DiscordMessageRef.fromJson(json);
}

/// @nodoc
mixin _$DiscordMessageRef {
  String get channelId => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscordMessageRefCopyWith<DiscordMessageRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscordMessageRefCopyWith<$Res> {
  factory $DiscordMessageRefCopyWith(
          DiscordMessageRef value, $Res Function(DiscordMessageRef) then) =
      _$DiscordMessageRefCopyWithImpl<$Res, DiscordMessageRef>;
  @useResult
  $Res call({String channelId, String messageId});
}

/// @nodoc
class _$DiscordMessageRefCopyWithImpl<$Res, $Val extends DiscordMessageRef>
    implements $DiscordMessageRefCopyWith<$Res> {
  _$DiscordMessageRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? messageId = null,
  }) {
    return _then(_value.copyWith(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscordMessageRefImplCopyWith<$Res>
    implements $DiscordMessageRefCopyWith<$Res> {
  factory _$$DiscordMessageRefImplCopyWith(_$DiscordMessageRefImpl value,
          $Res Function(_$DiscordMessageRefImpl) then) =
      __$$DiscordMessageRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String channelId, String messageId});
}

/// @nodoc
class __$$DiscordMessageRefImplCopyWithImpl<$Res>
    extends _$DiscordMessageRefCopyWithImpl<$Res, _$DiscordMessageRefImpl>
    implements _$$DiscordMessageRefImplCopyWith<$Res> {
  __$$DiscordMessageRefImplCopyWithImpl(_$DiscordMessageRefImpl _value,
      $Res Function(_$DiscordMessageRefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? messageId = null,
  }) {
    return _then(_$DiscordMessageRefImpl(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscordMessageRefImpl implements _DiscordMessageRef {
  const _$DiscordMessageRefImpl(
      {required this.channelId, required this.messageId});

  factory _$DiscordMessageRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscordMessageRefImplFromJson(json);

  @override
  final String channelId;
  @override
  final String messageId;

  @override
  String toString() {
    return 'DiscordMessageRef(channelId: $channelId, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscordMessageRefImpl &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, channelId, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscordMessageRefImplCopyWith<_$DiscordMessageRefImpl> get copyWith =>
      __$$DiscordMessageRefImplCopyWithImpl<_$DiscordMessageRefImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscordMessageRefImplToJson(
      this,
    );
  }
}

abstract class _DiscordMessageRef implements DiscordMessageRef {
  const factory _DiscordMessageRef(
      {required final String channelId,
      required final String messageId}) = _$DiscordMessageRefImpl;

  factory _DiscordMessageRef.fromJson(Map<String, dynamic> json) =
      _$DiscordMessageRefImpl.fromJson;

  @override
  String get channelId;
  @override
  String get messageId;
  @override
  @JsonKey(ignore: true)
  _$$DiscordMessageRefImplCopyWith<_$DiscordMessageRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
