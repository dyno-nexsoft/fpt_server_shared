// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zentao_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZentaoStatusImpl _$$ZentaoStatusImplFromJson(Map<String, dynamic> json) =>
    _$ZentaoStatusImpl(
      linked: json['linked'] as bool,
      account: json['account'] as String?,
      projectId: (json['project_id'] as num).toInt(),
      executionId: (json['execution_id'] as num).toInt(),
      todayTaskId: (json['today_task_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ZentaoStatusImplToJson(_$ZentaoStatusImpl instance) {
  final val = <String, dynamic>{
    'linked': instance.linked,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('account', instance.account);
  val['project_id'] = instance.projectId;
  val['execution_id'] = instance.executionId;
  writeNotNull('today_task_id', instance.todayTaskId);
  return val;
}
