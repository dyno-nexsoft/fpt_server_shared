// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
mixin _$Job {
  String get id => throw _privateConstructorUsedError;
  @JobStateConverter()
  JobState get state => throw _privateConstructorUsedError;
  String get command => throw _privateConstructorUsedError;
  String? get actionName => throw _privateConstructorUsedError;
  Map<String, dynamic> get actionParams => throw _privateConstructorUsedError;
  Map<String, dynamic> get environments => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  int? get artifactKey => throw _privateConstructorUsedError;
  bool get promoted => throw _privateConstructorUsedError;
  bool get announce => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get finishedAt => throw _privateConstructorUsedError;
  int? get exitCode => throw _privateConstructorUsedError;
  String? get lastLine => throw _privateConstructorUsedError;
  int get lastSeq => throw _privateConstructorUsedError;
  DiscordMessageRef? get discord => throw _privateConstructorUsedError;
  String? get resumedFrom => throw _privateConstructorUsedError;
  String? get cancelledBy => throw _privateConstructorUsedError;

  /// Set only on the response of an action invocation/retry — the build
  /// log's URL, served by the static file handler.
  String? get logUrl => throw _privateConstructorUsedError;

  /// Set only on the response of an action invocation/retry — non-fatal
  /// problems the caller should see (e.g. the Discord message could not be
  /// posted). The job still runs; a Discord outage must not become a CI
  /// outage.
  List<String> get warnings => throw _privateConstructorUsedError;

  /// Set only on the response of a cancel — e.g. `⛔️ Build cancelled!`.
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res, Job>;
  @useResult
  $Res call({
    String id,
    @JobStateConverter() JobState state,
    String command,
    String? actionName,
    Map<String, dynamic> actionParams,
    Map<String, dynamic> environments,
    String? createdBy,
    int? artifactKey,
    bool promoted,
    bool announce,
    DateTime createdAt,
    DateTime? startedAt,
    DateTime? finishedAt,
    int? exitCode,
    String? lastLine,
    int lastSeq,
    DiscordMessageRef? discord,
    String? resumedFrom,
    String? cancelledBy,
    String? logUrl,
    List<String> warnings,
    String? message,
  });

  $DiscordMessageRefCopyWith<$Res>? get discord;
}

/// @nodoc
class _$JobCopyWithImpl<$Res, $Val extends Job> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? state = null,
    Object? command = null,
    Object? actionName = freezed,
    Object? actionParams = null,
    Object? environments = null,
    Object? createdBy = freezed,
    Object? artifactKey = freezed,
    Object? promoted = null,
    Object? announce = null,
    Object? createdAt = null,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
    Object? exitCode = freezed,
    Object? lastLine = freezed,
    Object? lastSeq = null,
    Object? discord = freezed,
    Object? resumedFrom = freezed,
    Object? cancelledBy = freezed,
    Object? logUrl = freezed,
    Object? warnings = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            state: null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as JobState,
            command: null == command
                ? _value.command
                : command // ignore: cast_nullable_to_non_nullable
                      as String,
            actionName: freezed == actionName
                ? _value.actionName
                : actionName // ignore: cast_nullable_to_non_nullable
                      as String?,
            actionParams: null == actionParams
                ? _value.actionParams
                : actionParams // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            environments: null == environments
                ? _value.environments
                : environments // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            createdBy: freezed == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            artifactKey: freezed == artifactKey
                ? _value.artifactKey
                : artifactKey // ignore: cast_nullable_to_non_nullable
                      as int?,
            promoted: null == promoted
                ? _value.promoted
                : promoted // ignore: cast_nullable_to_non_nullable
                      as bool,
            announce: null == announce
                ? _value.announce
                : announce // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            startedAt: freezed == startedAt
                ? _value.startedAt
                : startedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            finishedAt: freezed == finishedAt
                ? _value.finishedAt
                : finishedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            exitCode: freezed == exitCode
                ? _value.exitCode
                : exitCode // ignore: cast_nullable_to_non_nullable
                      as int?,
            lastLine: freezed == lastLine
                ? _value.lastLine
                : lastLine // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastSeq: null == lastSeq
                ? _value.lastSeq
                : lastSeq // ignore: cast_nullable_to_non_nullable
                      as int,
            discord: freezed == discord
                ? _value.discord
                : discord // ignore: cast_nullable_to_non_nullable
                      as DiscordMessageRef?,
            resumedFrom: freezed == resumedFrom
                ? _value.resumedFrom
                : resumedFrom // ignore: cast_nullable_to_non_nullable
                      as String?,
            cancelledBy: freezed == cancelledBy
                ? _value.cancelledBy
                : cancelledBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            logUrl: freezed == logUrl
                ? _value.logUrl
                : logUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            warnings: null == warnings
                ? _value.warnings
                : warnings // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscordMessageRefCopyWith<$Res>? get discord {
    if (_value.discord == null) {
      return null;
    }

    return $DiscordMessageRefCopyWith<$Res>(_value.discord!, (value) {
      return _then(_value.copyWith(discord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobImplCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$JobImplCopyWith(_$JobImpl value, $Res Function(_$JobImpl) then) =
      __$$JobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JobStateConverter() JobState state,
    String command,
    String? actionName,
    Map<String, dynamic> actionParams,
    Map<String, dynamic> environments,
    String? createdBy,
    int? artifactKey,
    bool promoted,
    bool announce,
    DateTime createdAt,
    DateTime? startedAt,
    DateTime? finishedAt,
    int? exitCode,
    String? lastLine,
    int lastSeq,
    DiscordMessageRef? discord,
    String? resumedFrom,
    String? cancelledBy,
    String? logUrl,
    List<String> warnings,
    String? message,
  });

  @override
  $DiscordMessageRefCopyWith<$Res>? get discord;
}

/// @nodoc
class __$$JobImplCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res, _$JobImpl>
    implements _$$JobImplCopyWith<$Res> {
  __$$JobImplCopyWithImpl(_$JobImpl _value, $Res Function(_$JobImpl) _then)
    : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? state = null,
    Object? command = null,
    Object? actionName = freezed,
    Object? actionParams = null,
    Object? environments = null,
    Object? createdBy = freezed,
    Object? artifactKey = freezed,
    Object? promoted = null,
    Object? announce = null,
    Object? createdAt = null,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
    Object? exitCode = freezed,
    Object? lastLine = freezed,
    Object? lastSeq = null,
    Object? discord = freezed,
    Object? resumedFrom = freezed,
    Object? cancelledBy = freezed,
    Object? logUrl = freezed,
    Object? warnings = null,
    Object? message = freezed,
  }) {
    return _then(
      _$JobImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as JobState,
        command: null == command
            ? _value.command
            : command // ignore: cast_nullable_to_non_nullable
                  as String,
        actionName: freezed == actionName
            ? _value.actionName
            : actionName // ignore: cast_nullable_to_non_nullable
                  as String?,
        actionParams: null == actionParams
            ? _value._actionParams
            : actionParams // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        environments: null == environments
            ? _value._environments
            : environments // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        createdBy: freezed == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        artifactKey: freezed == artifactKey
            ? _value.artifactKey
            : artifactKey // ignore: cast_nullable_to_non_nullable
                  as int?,
        promoted: null == promoted
            ? _value.promoted
            : promoted // ignore: cast_nullable_to_non_nullable
                  as bool,
        announce: null == announce
            ? _value.announce
            : announce // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        startedAt: freezed == startedAt
            ? _value.startedAt
            : startedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        finishedAt: freezed == finishedAt
            ? _value.finishedAt
            : finishedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        exitCode: freezed == exitCode
            ? _value.exitCode
            : exitCode // ignore: cast_nullable_to_non_nullable
                  as int?,
        lastLine: freezed == lastLine
            ? _value.lastLine
            : lastLine // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastSeq: null == lastSeq
            ? _value.lastSeq
            : lastSeq // ignore: cast_nullable_to_non_nullable
                  as int,
        discord: freezed == discord
            ? _value.discord
            : discord // ignore: cast_nullable_to_non_nullable
                  as DiscordMessageRef?,
        resumedFrom: freezed == resumedFrom
            ? _value.resumedFrom
            : resumedFrom // ignore: cast_nullable_to_non_nullable
                  as String?,
        cancelledBy: freezed == cancelledBy
            ? _value.cancelledBy
            : cancelledBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        logUrl: freezed == logUrl
            ? _value.logUrl
            : logUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        warnings: null == warnings
            ? _value._warnings
            : warnings // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$JobImpl extends _Job {
  const _$JobImpl({
    required this.id,
    @JobStateConverter() required this.state,
    required this.command,
    this.actionName,
    final Map<String, dynamic> actionParams = const {},
    final Map<String, dynamic> environments = const {},
    this.createdBy,
    this.artifactKey,
    this.promoted = false,
    this.announce = false,
    required this.createdAt,
    this.startedAt,
    this.finishedAt,
    this.exitCode,
    this.lastLine,
    this.lastSeq = 0,
    this.discord,
    this.resumedFrom,
    this.cancelledBy,
    this.logUrl,
    final List<String> warnings = const [],
    this.message,
  }) : _actionParams = actionParams,
       _environments = environments,
       _warnings = warnings,
       super._();

  factory _$JobImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobImplFromJson(json);

  @override
  final String id;
  @override
  @JobStateConverter()
  final JobState state;
  @override
  final String command;
  @override
  final String? actionName;
  final Map<String, dynamic> _actionParams;
  @override
  @JsonKey()
  Map<String, dynamic> get actionParams {
    if (_actionParams is EqualUnmodifiableMapView) return _actionParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_actionParams);
  }

  final Map<String, dynamic> _environments;
  @override
  @JsonKey()
  Map<String, dynamic> get environments {
    if (_environments is EqualUnmodifiableMapView) return _environments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_environments);
  }

  @override
  final String? createdBy;
  @override
  final int? artifactKey;
  @override
  @JsonKey()
  final bool promoted;
  @override
  @JsonKey()
  final bool announce;
  @override
  final DateTime createdAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final int? exitCode;
  @override
  final String? lastLine;
  @override
  @JsonKey()
  final int lastSeq;
  @override
  final DiscordMessageRef? discord;
  @override
  final String? resumedFrom;
  @override
  final String? cancelledBy;

  /// Set only on the response of an action invocation/retry — the build
  /// log's URL, served by the static file handler.
  @override
  final String? logUrl;

  /// Set only on the response of an action invocation/retry — non-fatal
  /// problems the caller should see (e.g. the Discord message could not be
  /// posted). The job still runs; a Discord outage must not become a CI
  /// outage.
  final List<String> _warnings;

  /// Set only on the response of an action invocation/retry — non-fatal
  /// problems the caller should see (e.g. the Discord message could not be
  /// posted). The job still runs; a Discord outage must not become a CI
  /// outage.
  @override
  @JsonKey()
  List<String> get warnings {
    if (_warnings is EqualUnmodifiableListView) return _warnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warnings);
  }

  /// Set only on the response of a cancel — e.g. `⛔️ Build cancelled!`.
  @override
  final String? message;

  @override
  String toString() {
    return 'Job(id: $id, state: $state, command: $command, actionName: $actionName, actionParams: $actionParams, environments: $environments, createdBy: $createdBy, artifactKey: $artifactKey, promoted: $promoted, announce: $announce, createdAt: $createdAt, startedAt: $startedAt, finishedAt: $finishedAt, exitCode: $exitCode, lastLine: $lastLine, lastSeq: $lastSeq, discord: $discord, resumedFrom: $resumedFrom, cancelledBy: $cancelledBy, logUrl: $logUrl, warnings: $warnings, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.actionName, actionName) ||
                other.actionName == actionName) &&
            const DeepCollectionEquality().equals(
              other._actionParams,
              _actionParams,
            ) &&
            const DeepCollectionEquality().equals(
              other._environments,
              _environments,
            ) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.artifactKey, artifactKey) ||
                other.artifactKey == artifactKey) &&
            (identical(other.promoted, promoted) ||
                other.promoted == promoted) &&
            (identical(other.announce, announce) ||
                other.announce == announce) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.finishedAt, finishedAt) ||
                other.finishedAt == finishedAt) &&
            (identical(other.exitCode, exitCode) ||
                other.exitCode == exitCode) &&
            (identical(other.lastLine, lastLine) ||
                other.lastLine == lastLine) &&
            (identical(other.lastSeq, lastSeq) || other.lastSeq == lastSeq) &&
            (identical(other.discord, discord) || other.discord == discord) &&
            (identical(other.resumedFrom, resumedFrom) ||
                other.resumedFrom == resumedFrom) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            (identical(other.logUrl, logUrl) || other.logUrl == logUrl) &&
            const DeepCollectionEquality().equals(other._warnings, _warnings) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    state,
    command,
    actionName,
    const DeepCollectionEquality().hash(_actionParams),
    const DeepCollectionEquality().hash(_environments),
    createdBy,
    artifactKey,
    promoted,
    announce,
    createdAt,
    startedAt,
    finishedAt,
    exitCode,
    lastLine,
    lastSeq,
    discord,
    resumedFrom,
    cancelledBy,
    logUrl,
    const DeepCollectionEquality().hash(_warnings),
    message,
  ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      __$$JobImplCopyWithImpl<_$JobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobImplToJson(this);
  }
}

abstract class _Job extends Job {
  const factory _Job({
    required final String id,
    @JobStateConverter() required final JobState state,
    required final String command,
    final String? actionName,
    final Map<String, dynamic> actionParams,
    final Map<String, dynamic> environments,
    final String? createdBy,
    final int? artifactKey,
    final bool promoted,
    final bool announce,
    required final DateTime createdAt,
    final DateTime? startedAt,
    final DateTime? finishedAt,
    final int? exitCode,
    final String? lastLine,
    final int lastSeq,
    final DiscordMessageRef? discord,
    final String? resumedFrom,
    final String? cancelledBy,
    final String? logUrl,
    final List<String> warnings,
    final String? message,
  }) = _$JobImpl;
  const _Job._() : super._();

  factory _Job.fromJson(Map<String, dynamic> json) = _$JobImpl.fromJson;

  @override
  String get id;
  @override
  @JobStateConverter()
  JobState get state;
  @override
  String get command;
  @override
  String? get actionName;
  @override
  Map<String, dynamic> get actionParams;
  @override
  Map<String, dynamic> get environments;
  @override
  String? get createdBy;
  @override
  int? get artifactKey;
  @override
  bool get promoted;
  @override
  bool get announce;
  @override
  DateTime get createdAt;
  @override
  DateTime? get startedAt;
  @override
  DateTime? get finishedAt;
  @override
  int? get exitCode;
  @override
  String? get lastLine;
  @override
  int get lastSeq;
  @override
  DiscordMessageRef? get discord;
  @override
  String? get resumedFrom;
  @override
  String? get cancelledBy;
  @override
  /// Set only on the response of an action invocation/retry — the build
  /// log's URL, served by the static file handler.
  String? get logUrl;
  @override
  /// Set only on the response of an action invocation/retry — non-fatal
  /// problems the caller should see (e.g. the Discord message could not be
  /// posted). The job still runs; a Discord outage must not become a CI
  /// outage.
  List<String> get warnings;
  @override
  /// Set only on the response of a cancel — e.g. `⛔️ Build cancelled!`.
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
