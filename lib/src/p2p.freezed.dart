// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'p2p.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

P2pPeer _$P2pPeerFromJson(Map<String, dynamic> json) {
  return _P2pPeer.fromJson(json);
}

/// @nodoc
mixin _$P2pPeer {
  String get id => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  DateTime get connectedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $P2pPeerCopyWith<P2pPeer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $P2pPeerCopyWith<$Res> {
  factory $P2pPeerCopyWith(P2pPeer value, $Res Function(P2pPeer) then) =
      _$P2pPeerCopyWithImpl<$Res, P2pPeer>;
  @useResult
  $Res call({String id, String displayName, DateTime connectedAt});
}

/// @nodoc
class _$P2pPeerCopyWithImpl<$Res, $Val extends P2pPeer>
    implements $P2pPeerCopyWith<$Res> {
  _$P2pPeerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? connectedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      connectedAt: null == connectedAt
          ? _value.connectedAt
          : connectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$P2pPeerImplCopyWith<$Res> implements $P2pPeerCopyWith<$Res> {
  factory _$$P2pPeerImplCopyWith(
          _$P2pPeerImpl value, $Res Function(_$P2pPeerImpl) then) =
      __$$P2pPeerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String displayName, DateTime connectedAt});
}

/// @nodoc
class __$$P2pPeerImplCopyWithImpl<$Res>
    extends _$P2pPeerCopyWithImpl<$Res, _$P2pPeerImpl>
    implements _$$P2pPeerImplCopyWith<$Res> {
  __$$P2pPeerImplCopyWithImpl(
      _$P2pPeerImpl _value, $Res Function(_$P2pPeerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? connectedAt = null,
  }) {
    return _then(_$P2pPeerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      connectedAt: null == connectedAt
          ? _value.connectedAt
          : connectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$P2pPeerImpl implements _P2pPeer {
  const _$P2pPeerImpl(
      {required this.id, required this.displayName, required this.connectedAt});

  factory _$P2pPeerImpl.fromJson(Map<String, dynamic> json) =>
      _$$P2pPeerImplFromJson(json);

  @override
  final String id;
  @override
  final String displayName;
  @override
  final DateTime connectedAt;

  @override
  String toString() {
    return 'P2pPeer(id: $id, displayName: $displayName, connectedAt: $connectedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$P2pPeerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.connectedAt, connectedAt) ||
                other.connectedAt == connectedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, displayName, connectedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$P2pPeerImplCopyWith<_$P2pPeerImpl> get copyWith =>
      __$$P2pPeerImplCopyWithImpl<_$P2pPeerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$P2pPeerImplToJson(
      this,
    );
  }
}

abstract class _P2pPeer implements P2pPeer {
  const factory _P2pPeer(
      {required final String id,
      required final String displayName,
      required final DateTime connectedAt}) = _$P2pPeerImpl;

  factory _P2pPeer.fromJson(Map<String, dynamic> json) = _$P2pPeerImpl.fromJson;

  @override
  String get id;
  @override
  String get displayName;
  @override
  DateTime get connectedAt;
  @override
  @JsonKey(ignore: true)
  _$$P2pPeerImplCopyWith<_$P2pPeerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

P2pSignal _$P2pSignalFromJson(Map<String, dynamic> json) {
  return _P2pSignal.fromJson(json);
}

/// @nodoc
mixin _$P2pSignal {
  String get from => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $P2pSignalCopyWith<P2pSignal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $P2pSignalCopyWith<$Res> {
  factory $P2pSignalCopyWith(P2pSignal value, $Res Function(P2pSignal) then) =
      _$P2pSignalCopyWithImpl<$Res, P2pSignal>;
  @useResult
  $Res call({String from, String type, Map<String, dynamic> payload});
}

/// @nodoc
class _$P2pSignalCopyWithImpl<$Res, $Val extends P2pSignal>
    implements $P2pSignalCopyWith<$Res> {
  _$P2pSignalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? type = null,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$P2pSignalImplCopyWith<$Res>
    implements $P2pSignalCopyWith<$Res> {
  factory _$$P2pSignalImplCopyWith(
          _$P2pSignalImpl value, $Res Function(_$P2pSignalImpl) then) =
      __$$P2pSignalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String type, Map<String, dynamic> payload});
}

/// @nodoc
class __$$P2pSignalImplCopyWithImpl<$Res>
    extends _$P2pSignalCopyWithImpl<$Res, _$P2pSignalImpl>
    implements _$$P2pSignalImplCopyWith<$Res> {
  __$$P2pSignalImplCopyWithImpl(
      _$P2pSignalImpl _value, $Res Function(_$P2pSignalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? type = null,
    Object? payload = null,
  }) {
    return _then(_$P2pSignalImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$P2pSignalImpl implements _P2pSignal {
  const _$P2pSignalImpl(
      {required this.from,
      required this.type,
      required final Map<String, dynamic> payload})
      : _payload = payload;

  factory _$P2pSignalImpl.fromJson(Map<String, dynamic> json) =>
      _$$P2pSignalImplFromJson(json);

  @override
  final String from;
  @override
  final String type;
  final Map<String, dynamic> _payload;
  @override
  Map<String, dynamic> get payload {
    if (_payload is EqualUnmodifiableMapView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_payload);
  }

  @override
  String toString() {
    return 'P2pSignal(from: $from, type: $type, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$P2pSignalImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._payload, _payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, from, type, const DeepCollectionEquality().hash(_payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$P2pSignalImplCopyWith<_$P2pSignalImpl> get copyWith =>
      __$$P2pSignalImplCopyWithImpl<_$P2pSignalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$P2pSignalImplToJson(
      this,
    );
  }
}

abstract class _P2pSignal implements P2pSignal {
  const factory _P2pSignal(
      {required final String from,
      required final String type,
      required final Map<String, dynamic> payload}) = _$P2pSignalImpl;

  factory _P2pSignal.fromJson(Map<String, dynamic> json) =
      _$P2pSignalImpl.fromJson;

  @override
  String get from;
  @override
  String get type;
  @override
  Map<String, dynamic> get payload;
  @override
  @JsonKey(ignore: true)
  _$$P2pSignalImplCopyWith<_$P2pSignalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
