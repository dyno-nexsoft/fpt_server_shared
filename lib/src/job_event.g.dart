// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobQueuedEventImpl _$$JobQueuedEventImplFromJson(Map<String, dynamic> json) =>
    _$JobQueuedEventImpl(
      seq: (json['seq'] as num).toInt(),
      at: DateTime.parse(json['at'] as String),
      position: (json['position'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$JobQueuedEventImplToJson(
  _$JobQueuedEventImpl instance,
) => <String, dynamic>{
  'seq': instance.seq,
  'at': instance.at.toIso8601String(),
  'position': instance.position,
  'type': instance.$type,
};

_$JobStartedEventImpl _$$JobStartedEventImplFromJson(
  Map<String, dynamic> json,
) => _$JobStartedEventImpl(
  seq: (json['seq'] as num).toInt(),
  at: DateTime.parse(json['at'] as String),
  immediate: json['immediate'] as bool,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$$JobStartedEventImplToJson(
  _$JobStartedEventImpl instance,
) => <String, dynamic>{
  'seq': instance.seq,
  'at': instance.at.toIso8601String(),
  'immediate': instance.immediate,
  'type': instance.$type,
};

_$JobPromotedEventImpl _$$JobPromotedEventImplFromJson(
  Map<String, dynamic> json,
) => _$JobPromotedEventImpl(
  seq: (json['seq'] as num).toInt(),
  at: DateTime.parse(json['at'] as String),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$$JobPromotedEventImplToJson(
  _$JobPromotedEventImpl instance,
) => <String, dynamic>{
  'seq': instance.seq,
  'at': instance.at.toIso8601String(),
  'type': instance.$type,
};

_$JobStatusEventImpl _$$JobStatusEventImplFromJson(Map<String, dynamic> json) =>
    _$JobStatusEventImpl(
      seq: (json['seq'] as num).toInt(),
      at: DateTime.parse(json['at'] as String),
      line: json['line'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$JobStatusEventImplToJson(
  _$JobStatusEventImpl instance,
) => <String, dynamic>{
  'seq': instance.seq,
  'at': instance.at.toIso8601String(),
  'line': instance.line,
  'type': instance.$type,
};

_$JobLogEventImpl _$$JobLogEventImplFromJson(Map<String, dynamic> json) =>
    _$JobLogEventImpl(
      seq: (json['seq'] as num).toInt(),
      at: DateTime.parse(json['at'] as String),
      chunk: json['chunk'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$JobLogEventImplToJson(_$JobLogEventImpl instance) =>
    <String, dynamic>{
      'seq': instance.seq,
      'at': instance.at.toIso8601String(),
      'chunk': instance.chunk,
      'type': instance.$type,
    };

_$JobErrorEventImpl _$$JobErrorEventImplFromJson(Map<String, dynamic> json) =>
    _$JobErrorEventImpl(
      seq: (json['seq'] as num).toInt(),
      at: DateTime.parse(json['at'] as String),
      message: json['message'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$JobErrorEventImplToJson(_$JobErrorEventImpl instance) =>
    <String, dynamic>{
      'seq': instance.seq,
      'at': instance.at.toIso8601String(),
      'message': instance.message,
      'type': instance.$type,
    };

_$JobFinishedEventImpl _$$JobFinishedEventImplFromJson(
  Map<String, dynamic> json,
) => _$JobFinishedEventImpl(
  seq: (json['seq'] as num).toInt(),
  at: DateTime.parse(json['at'] as String),
  state: const JobStateConverter().fromJson(json['state'] as String),
  exitCode: (json['exit_code'] as num?)?.toInt(),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$$JobFinishedEventImplToJson(
  _$JobFinishedEventImpl instance,
) {
  final val = <String, dynamic>{
    'seq': instance.seq,
    'at': instance.at.toIso8601String(),
    'state': const JobStateConverter().toJson(instance.state),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('exit_code', instance.exitCode);
  val['type'] = instance.$type;
  return val;
}
