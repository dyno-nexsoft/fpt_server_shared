// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_timing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobTimingImpl _$$JobTimingImplFromJson(Map<String, dynamic> json) =>
    _$JobTimingImpl(
      anchor: $enumDecodeNullable(_$TimeAnchorEnumMap, json['anchor']),
      offsetMinutes: (json['offset_minutes'] as num?)?.toInt() ?? 0,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$JobTimingImplToJson(_$JobTimingImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('anchor', _$TimeAnchorEnumMap[instance.anchor]);
  val['offset_minutes'] = instance.offsetMinutes;
  writeNotNull('time', instance.time);
  return val;
}

const _$TimeAnchorEnumMap = {
  TimeAnchor.workStart: 'work_start',
  TimeAnchor.workEnd: 'work_end',
  TimeAnchor.lunchStart: 'lunch_start',
  TimeAnchor.lunchEnd: 'lunch_end',
};
