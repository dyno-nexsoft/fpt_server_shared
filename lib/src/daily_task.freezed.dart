// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DailyTask {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Description as Markdown (converted from the HTML Zentao stores).
  String get description => throw _privateConstructorUsedError;

  /// Raw Zentao status: `wait`, `doing`, `done`, `closed`, …
  String get status => throw _privateConstructorUsedError;

  /// Display name of the assignee.
  String get assignee => throw _privateConstructorUsedError;
  DateTime get lastEdited => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyTaskCopyWith<DailyTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyTaskCopyWith<$Res> {
  factory $DailyTaskCopyWith(DailyTask value, $Res Function(DailyTask) then) =
      _$DailyTaskCopyWithImpl<$Res, DailyTask>;
  @useResult
  $Res call({
    int id,
    String name,
    String description,
    String status,
    String assignee,
    DateTime lastEdited,
    String url,
  });
}

/// @nodoc
class _$DailyTaskCopyWithImpl<$Res, $Val extends DailyTask>
    implements $DailyTaskCopyWith<$Res> {
  _$DailyTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? status = null,
    Object? assignee = null,
    Object? lastEdited = null,
    Object? url = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            assignee: null == assignee
                ? _value.assignee
                : assignee // ignore: cast_nullable_to_non_nullable
                      as String,
            lastEdited: null == lastEdited
                ? _value.lastEdited
                : lastEdited // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyTaskImplCopyWith<$Res>
    implements $DailyTaskCopyWith<$Res> {
  factory _$$DailyTaskImplCopyWith(
    _$DailyTaskImpl value,
    $Res Function(_$DailyTaskImpl) then,
  ) = __$$DailyTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String description,
    String status,
    String assignee,
    DateTime lastEdited,
    String url,
  });
}

/// @nodoc
class __$$DailyTaskImplCopyWithImpl<$Res>
    extends _$DailyTaskCopyWithImpl<$Res, _$DailyTaskImpl>
    implements _$$DailyTaskImplCopyWith<$Res> {
  __$$DailyTaskImplCopyWithImpl(
    _$DailyTaskImpl _value,
    $Res Function(_$DailyTaskImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? status = null,
    Object? assignee = null,
    Object? lastEdited = null,
    Object? url = null,
  }) {
    return _then(
      _$DailyTaskImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        assignee: null == assignee
            ? _value.assignee
            : assignee // ignore: cast_nullable_to_non_nullable
                  as String,
        lastEdited: null == lastEdited
            ? _value.lastEdited
            : lastEdited // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DailyTaskImpl extends _DailyTask {
  const _$DailyTaskImpl({
    required this.id,
    required this.name,
    required this.description,
    required this.status,
    required this.assignee,
    required this.lastEdited,
    required this.url,
  }) : super._();

  @override
  final int id;
  @override
  final String name;

  /// Description as Markdown (converted from the HTML Zentao stores).
  @override
  final String description;

  /// Raw Zentao status: `wait`, `doing`, `done`, `closed`, …
  @override
  final String status;

  /// Display name of the assignee.
  @override
  final String assignee;
  @override
  final DateTime lastEdited;
  @override
  final String url;

  @override
  String toString() {
    return 'DailyTask(id: $id, name: $name, description: $description, status: $status, assignee: $assignee, lastEdited: $lastEdited, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.assignee, assignee) ||
                other.assignee == assignee) &&
            (identical(other.lastEdited, lastEdited) ||
                other.lastEdited == lastEdited) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    status,
    assignee,
    lastEdited,
    url,
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyTaskImplCopyWith<_$DailyTaskImpl> get copyWith =>
      __$$DailyTaskImplCopyWithImpl<_$DailyTaskImpl>(this, _$identity);
}

abstract class _DailyTask extends DailyTask {
  const factory _DailyTask({
    required final int id,
    required final String name,
    required final String description,
    required final String status,
    required final String assignee,
    required final DateTime lastEdited,
    required final String url,
  }) = _$DailyTaskImpl;
  const _DailyTask._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  /// Description as Markdown (converted from the HTML Zentao stores).
  String get description;
  @override
  /// Raw Zentao status: `wait`, `doing`, `done`, `closed`, …
  String get status;
  @override
  /// Display name of the assignee.
  String get assignee;
  @override
  DateTime get lastEdited;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$DailyTaskImplCopyWith<_$DailyTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
