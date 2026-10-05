// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_calendar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkHoursImpl _$$WorkHoursImplFromJson(Map<String, dynamic> json) =>
    _$WorkHoursImpl(
      start: json['start'] as String,
      end: json['end'] as String,
      lunchStart: json['lunch_start'] as String?,
      lunchEnd: json['lunch_end'] as String?,
    );

Map<String, dynamic> _$$WorkHoursImplToJson(_$WorkHoursImpl instance) {
  final val = <String, dynamic>{
    'start': instance.start,
    'end': instance.end,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lunch_start', instance.lunchStart);
  writeNotNull('lunch_end', instance.lunchEnd);
  return val;
}

_$WorkWeekdayImpl _$$WorkWeekdayImplFromJson(Map<String, dynamic> json) =>
    _$WorkWeekdayImpl(
      weekday: (json['weekday'] as num).toInt(),
      working: json['working'] as bool,
      hours: WorkHours.fromJson(json['hours'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WorkWeekdayImplToJson(_$WorkWeekdayImpl instance) =>
    <String, dynamic>{
      'weekday': instance.weekday,
      'working': instance.working,
      'hours': instance.hours.toJson(),
    };

_$CalendarExceptionImpl _$$CalendarExceptionImplFromJson(
        Map<String, dynamic> json) =>
    _$CalendarExceptionImpl(
      date: json['date'] as String,
      working: json['working'] as bool,
      note: json['note'] as String? ?? '',
      hours: json['hours'] == null
          ? null
          : WorkHours.fromJson(json['hours'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CalendarExceptionImplToJson(
    _$CalendarExceptionImpl instance) {
  final val = <String, dynamic>{
    'date': instance.date,
    'working': instance.working,
    'note': instance.note,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hours', instance.hours?.toJson());
  return val;
}

_$WorkCalendarImpl _$$WorkCalendarImplFromJson(Map<String, dynamic> json) =>
    _$WorkCalendarImpl(
      weekdays: (json['weekdays'] as List<dynamic>?)
              ?.map((e) => WorkWeekday.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <WorkWeekday>[],
      exceptions: (json['exceptions'] as List<dynamic>?)
              ?.map(
                  (e) => CalendarException.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CalendarException>[],
    );

Map<String, dynamic> _$$WorkCalendarImplToJson(_$WorkCalendarImpl instance) =>
    <String, dynamic>{
      'weekdays': instance.weekdays.map((e) => e.toJson()).toList(),
      'exceptions': instance.exceptions.map((e) => e.toJson()).toList(),
    };
