// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarkNotificationsReadParams _$MarkNotificationsReadParamsFromJson(
    Map<String, dynamic> json) {
  return _MarkNotificationsReadParams.fromJson(json);
}

/// @nodoc
mixin _$MarkNotificationsReadParams {
  /// Empty means everything visible to the caller.
  List<String> get ids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkNotificationsReadParamsCopyWith<MarkNotificationsReadParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkNotificationsReadParamsCopyWith<$Res> {
  factory $MarkNotificationsReadParamsCopyWith(
          MarkNotificationsReadParams value,
          $Res Function(MarkNotificationsReadParams) then) =
      _$MarkNotificationsReadParamsCopyWithImpl<$Res,
          MarkNotificationsReadParams>;
  @useResult
  $Res call({List<String> ids});
}

/// @nodoc
class _$MarkNotificationsReadParamsCopyWithImpl<$Res,
        $Val extends MarkNotificationsReadParams>
    implements $MarkNotificationsReadParamsCopyWith<$Res> {
  _$MarkNotificationsReadParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_value.copyWith(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkNotificationsReadParamsImplCopyWith<$Res>
    implements $MarkNotificationsReadParamsCopyWith<$Res> {
  factory _$$MarkNotificationsReadParamsImplCopyWith(
          _$MarkNotificationsReadParamsImpl value,
          $Res Function(_$MarkNotificationsReadParamsImpl) then) =
      __$$MarkNotificationsReadParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> ids});
}

/// @nodoc
class __$$MarkNotificationsReadParamsImplCopyWithImpl<$Res>
    extends _$MarkNotificationsReadParamsCopyWithImpl<$Res,
        _$MarkNotificationsReadParamsImpl>
    implements _$$MarkNotificationsReadParamsImplCopyWith<$Res> {
  __$$MarkNotificationsReadParamsImplCopyWithImpl(
      _$MarkNotificationsReadParamsImpl _value,
      $Res Function(_$MarkNotificationsReadParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$MarkNotificationsReadParamsImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarkNotificationsReadParamsImpl
    implements _MarkNotificationsReadParams {
  const _$MarkNotificationsReadParamsImpl({final List<String> ids = const []})
      : _ids = ids;

  factory _$MarkNotificationsReadParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MarkNotificationsReadParamsImplFromJson(json);

  /// Empty means everything visible to the caller.
  final List<String> _ids;

  /// Empty means everything visible to the caller.
  @override
  @JsonKey()
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'MarkNotificationsReadParams(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkNotificationsReadParamsImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkNotificationsReadParamsImplCopyWith<_$MarkNotificationsReadParamsImpl>
      get copyWith => __$$MarkNotificationsReadParamsImplCopyWithImpl<
          _$MarkNotificationsReadParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkNotificationsReadParamsImplToJson(
      this,
    );
  }
}

abstract class _MarkNotificationsReadParams
    implements MarkNotificationsReadParams {
  const factory _MarkNotificationsReadParams({final List<String> ids}) =
      _$MarkNotificationsReadParamsImpl;

  factory _MarkNotificationsReadParams.fromJson(Map<String, dynamic> json) =
      _$MarkNotificationsReadParamsImpl.fromJson;

  @override

  /// Empty means everything visible to the caller.
  List<String> get ids;
  @override
  @JsonKey(ignore: true)
  _$$MarkNotificationsReadParamsImplCopyWith<_$MarkNotificationsReadParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AnnounceNotificationParams _$AnnounceNotificationParamsFromJson(
    Map<String, dynamic> json) {
  return _AnnounceNotificationParams.fromJson(json);
}

/// @nodoc
mixin _$AnnounceNotificationParams {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  /// A dashboard route starting with a single `/` — where tapping the
  /// notice goes.
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnounceNotificationParamsCopyWith<AnnounceNotificationParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnounceNotificationParamsCopyWith<$Res> {
  factory $AnnounceNotificationParamsCopyWith(AnnounceNotificationParams value,
          $Res Function(AnnounceNotificationParams) then) =
      _$AnnounceNotificationParamsCopyWithImpl<$Res,
          AnnounceNotificationParams>;
  @useResult
  $Res call({String title, String body, String? path});
}

/// @nodoc
class _$AnnounceNotificationParamsCopyWithImpl<$Res,
        $Val extends AnnounceNotificationParams>
    implements $AnnounceNotificationParamsCopyWith<$Res> {
  _$AnnounceNotificationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnounceNotificationParamsImplCopyWith<$Res>
    implements $AnnounceNotificationParamsCopyWith<$Res> {
  factory _$$AnnounceNotificationParamsImplCopyWith(
          _$AnnounceNotificationParamsImpl value,
          $Res Function(_$AnnounceNotificationParamsImpl) then) =
      __$$AnnounceNotificationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String body, String? path});
}

/// @nodoc
class __$$AnnounceNotificationParamsImplCopyWithImpl<$Res>
    extends _$AnnounceNotificationParamsCopyWithImpl<$Res,
        _$AnnounceNotificationParamsImpl>
    implements _$$AnnounceNotificationParamsImplCopyWith<$Res> {
  __$$AnnounceNotificationParamsImplCopyWithImpl(
      _$AnnounceNotificationParamsImpl _value,
      $Res Function(_$AnnounceNotificationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? path = freezed,
  }) {
    return _then(_$AnnounceNotificationParamsImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnounceNotificationParamsImpl implements _AnnounceNotificationParams {
  const _$AnnounceNotificationParamsImpl(
      {required this.title, required this.body, this.path});

  factory _$AnnounceNotificationParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AnnounceNotificationParamsImplFromJson(json);

  @override
  final String title;
  @override
  final String body;

  /// A dashboard route starting with a single `/` — where tapping the
  /// notice goes.
  @override
  final String? path;

  @override
  String toString() {
    return 'AnnounceNotificationParams(title: $title, body: $body, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnounceNotificationParamsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, body, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnounceNotificationParamsImplCopyWith<_$AnnounceNotificationParamsImpl>
      get copyWith => __$$AnnounceNotificationParamsImplCopyWithImpl<
          _$AnnounceNotificationParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnounceNotificationParamsImplToJson(
      this,
    );
  }
}

abstract class _AnnounceNotificationParams
    implements AnnounceNotificationParams {
  const factory _AnnounceNotificationParams(
      {required final String title,
      required final String body,
      final String? path}) = _$AnnounceNotificationParamsImpl;

  factory _AnnounceNotificationParams.fromJson(Map<String, dynamic> json) =
      _$AnnounceNotificationParamsImpl.fromJson;

  @override
  String get title;
  @override
  String get body;
  @override

  /// A dashboard route starting with a single `/` — where tapping the
  /// notice goes.
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$$AnnounceNotificationParamsImplCopyWith<_$AnnounceNotificationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemoveNotificationParams _$RemoveNotificationParamsFromJson(
    Map<String, dynamic> json) {
  return _RemoveNotificationParams.fromJson(json);
}

/// @nodoc
mixin _$RemoveNotificationParams {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveNotificationParamsCopyWith<RemoveNotificationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveNotificationParamsCopyWith<$Res> {
  factory $RemoveNotificationParamsCopyWith(RemoveNotificationParams value,
          $Res Function(RemoveNotificationParams) then) =
      _$RemoveNotificationParamsCopyWithImpl<$Res, RemoveNotificationParams>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$RemoveNotificationParamsCopyWithImpl<$Res,
        $Val extends RemoveNotificationParams>
    implements $RemoveNotificationParamsCopyWith<$Res> {
  _$RemoveNotificationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveNotificationParamsImplCopyWith<$Res>
    implements $RemoveNotificationParamsCopyWith<$Res> {
  factory _$$RemoveNotificationParamsImplCopyWith(
          _$RemoveNotificationParamsImpl value,
          $Res Function(_$RemoveNotificationParamsImpl) then) =
      __$$RemoveNotificationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RemoveNotificationParamsImplCopyWithImpl<$Res>
    extends _$RemoveNotificationParamsCopyWithImpl<$Res,
        _$RemoveNotificationParamsImpl>
    implements _$$RemoveNotificationParamsImplCopyWith<$Res> {
  __$$RemoveNotificationParamsImplCopyWithImpl(
      _$RemoveNotificationParamsImpl _value,
      $Res Function(_$RemoveNotificationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveNotificationParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveNotificationParamsImpl implements _RemoveNotificationParams {
  const _$RemoveNotificationParamsImpl({required this.id});

  factory _$RemoveNotificationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveNotificationParamsImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'RemoveNotificationParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveNotificationParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveNotificationParamsImplCopyWith<_$RemoveNotificationParamsImpl>
      get copyWith => __$$RemoveNotificationParamsImplCopyWithImpl<
          _$RemoveNotificationParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveNotificationParamsImplToJson(
      this,
    );
  }
}

abstract class _RemoveNotificationParams implements RemoveNotificationParams {
  const factory _RemoveNotificationParams({required final String id}) =
      _$RemoveNotificationParamsImpl;

  factory _RemoveNotificationParams.fromJson(Map<String, dynamic> json) =
      _$RemoveNotificationParamsImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$RemoveNotificationParamsImplCopyWith<_$RemoveNotificationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
