// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActionSchema _$ActionSchemaFromJson(Map<String, dynamic> json) {
  return _ActionSchema.fromJson(json);
}

/// @nodoc
mixin _$ActionSchema {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ActionKind get kind => throw _privateConstructorUsedError;
  @PermissionConverter()
  Permission get permission => throw _privateConstructorUsedError;
  List<ActionParam> get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionSchemaCopyWith<ActionSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionSchemaCopyWith<$Res> {
  factory $ActionSchemaCopyWith(
          ActionSchema value, $Res Function(ActionSchema) then) =
      _$ActionSchemaCopyWithImpl<$Res, ActionSchema>;
  @useResult
  $Res call(
      {String name,
      String description,
      ActionKind kind,
      @PermissionConverter() Permission permission,
      List<ActionParam> params});
}

/// @nodoc
class _$ActionSchemaCopyWithImpl<$Res, $Val extends ActionSchema>
    implements $ActionSchemaCopyWith<$Res> {
  _$ActionSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? kind = null,
    Object? permission = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as ActionKind,
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as Permission,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as List<ActionParam>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActionSchemaImplCopyWith<$Res>
    implements $ActionSchemaCopyWith<$Res> {
  factory _$$ActionSchemaImplCopyWith(
          _$ActionSchemaImpl value, $Res Function(_$ActionSchemaImpl) then) =
      __$$ActionSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      ActionKind kind,
      @PermissionConverter() Permission permission,
      List<ActionParam> params});
}

/// @nodoc
class __$$ActionSchemaImplCopyWithImpl<$Res>
    extends _$ActionSchemaCopyWithImpl<$Res, _$ActionSchemaImpl>
    implements _$$ActionSchemaImplCopyWith<$Res> {
  __$$ActionSchemaImplCopyWithImpl(
      _$ActionSchemaImpl _value, $Res Function(_$ActionSchemaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? kind = null,
    Object? permission = null,
    Object? params = null,
  }) {
    return _then(_$ActionSchemaImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as ActionKind,
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as Permission,
      params: null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as List<ActionParam>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionSchemaImpl extends _ActionSchema {
  const _$ActionSchemaImpl(
      {required this.name,
      this.description = '',
      required this.kind,
      @PermissionConverter() required this.permission,
      final List<ActionParam> params = const []})
      : _params = params,
        super._();

  factory _$ActionSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionSchemaImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  final ActionKind kind;
  @override
  @PermissionConverter()
  final Permission permission;
  final List<ActionParam> _params;
  @override
  @JsonKey()
  List<ActionParam> get params {
    if (_params is EqualUnmodifiableListView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_params);
  }

  @override
  String toString() {
    return 'ActionSchema(name: $name, description: $description, kind: $kind, permission: $permission, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionSchemaImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.permission, permission) ||
                other.permission == permission) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, kind,
      permission, const DeepCollectionEquality().hash(_params));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionSchemaImplCopyWith<_$ActionSchemaImpl> get copyWith =>
      __$$ActionSchemaImplCopyWithImpl<_$ActionSchemaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionSchemaImplToJson(
      this,
    );
  }
}

abstract class _ActionSchema extends ActionSchema {
  const factory _ActionSchema(
      {required final String name,
      final String description,
      required final ActionKind kind,
      @PermissionConverter() required final Permission permission,
      final List<ActionParam> params}) = _$ActionSchemaImpl;
  const _ActionSchema._() : super._();

  factory _ActionSchema.fromJson(Map<String, dynamic> json) =
      _$ActionSchemaImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  ActionKind get kind;
  @override
  @PermissionConverter()
  Permission get permission;
  @override
  List<ActionParam> get params;
  @override
  @JsonKey(ignore: true)
  _$$ActionSchemaImplCopyWith<_$ActionSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActionParam _$ActionParamFromJson(Map<String, dynamic> json) {
  return _ActionParam.fromJson(json);
}

/// @nodoc
mixin _$ActionParam {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ParamType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'required')
  bool get isRequired => throw _privateConstructorUsedError;
  List<String> get choices => throw _privateConstructorUsedError;
  @JsonKey(name: 'default')
  dynamic get defaultValue => throw _privateConstructorUsedError;
  bool get isBranchRef => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionParamCopyWith<ActionParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionParamCopyWith<$Res> {
  factory $ActionParamCopyWith(
          ActionParam value, $Res Function(ActionParam) then) =
      _$ActionParamCopyWithImpl<$Res, ActionParam>;
  @useResult
  $Res call(
      {String name,
      String description,
      ParamType type,
      @JsonKey(name: 'required') bool isRequired,
      List<String> choices,
      @JsonKey(name: 'default') dynamic defaultValue,
      bool isBranchRef});
}

/// @nodoc
class _$ActionParamCopyWithImpl<$Res, $Val extends ActionParam>
    implements $ActionParamCopyWith<$Res> {
  _$ActionParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? isRequired = null,
    Object? choices = null,
    Object? defaultValue = freezed,
    Object? isBranchRef = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ParamType,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isBranchRef: null == isBranchRef
          ? _value.isBranchRef
          : isBranchRef // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActionParamImplCopyWith<$Res>
    implements $ActionParamCopyWith<$Res> {
  factory _$$ActionParamImplCopyWith(
          _$ActionParamImpl value, $Res Function(_$ActionParamImpl) then) =
      __$$ActionParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      ParamType type,
      @JsonKey(name: 'required') bool isRequired,
      List<String> choices,
      @JsonKey(name: 'default') dynamic defaultValue,
      bool isBranchRef});
}

/// @nodoc
class __$$ActionParamImplCopyWithImpl<$Res>
    extends _$ActionParamCopyWithImpl<$Res, _$ActionParamImpl>
    implements _$$ActionParamImplCopyWith<$Res> {
  __$$ActionParamImplCopyWithImpl(
      _$ActionParamImpl _value, $Res Function(_$ActionParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? isRequired = null,
    Object? choices = null,
    Object? defaultValue = freezed,
    Object? isBranchRef = null,
  }) {
    return _then(_$ActionParamImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ParamType,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isBranchRef: null == isBranchRef
          ? _value.isBranchRef
          : isBranchRef // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionParamImpl implements _ActionParam {
  const _$ActionParamImpl(
      {required this.name,
      this.description = '',
      required this.type,
      @JsonKey(name: 'required') this.isRequired = false,
      final List<String> choices = const [],
      @JsonKey(name: 'default') this.defaultValue,
      this.isBranchRef = false})
      : _choices = choices;

  factory _$ActionParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionParamImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  final ParamType type;
  @override
  @JsonKey(name: 'required')
  final bool isRequired;
  final List<String> _choices;
  @override
  @JsonKey()
  List<String> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  @JsonKey(name: 'default')
  final dynamic defaultValue;
  @override
  @JsonKey()
  final bool isBranchRef;

  @override
  String toString() {
    return 'ActionParam(name: $name, description: $description, type: $type, isRequired: $isRequired, choices: $choices, defaultValue: $defaultValue, isBranchRef: $isBranchRef)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionParamImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            (identical(other.isBranchRef, isBranchRef) ||
                other.isBranchRef == isBranchRef));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      type,
      isRequired,
      const DeepCollectionEquality().hash(_choices),
      const DeepCollectionEquality().hash(defaultValue),
      isBranchRef);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionParamImplCopyWith<_$ActionParamImpl> get copyWith =>
      __$$ActionParamImplCopyWithImpl<_$ActionParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionParamImplToJson(
      this,
    );
  }
}

abstract class _ActionParam implements ActionParam {
  const factory _ActionParam(
      {required final String name,
      final String description,
      required final ParamType type,
      @JsonKey(name: 'required') final bool isRequired,
      final List<String> choices,
      @JsonKey(name: 'default') final dynamic defaultValue,
      final bool isBranchRef}) = _$ActionParamImpl;

  factory _ActionParam.fromJson(Map<String, dynamic> json) =
      _$ActionParamImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  ParamType get type;
  @override
  @JsonKey(name: 'required')
  bool get isRequired;
  @override
  List<String> get choices;
  @override
  @JsonKey(name: 'default')
  dynamic get defaultValue;
  @override
  bool get isBranchRef;
  @override
  @JsonKey(ignore: true)
  _$$ActionParamImplCopyWith<_$ActionParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
