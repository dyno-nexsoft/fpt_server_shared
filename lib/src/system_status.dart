import 'package:freezed_annotation/freezed_annotation.dart';

import 'job.dart';

part 'system_status.freezed.dart';
part 'system_status.g.dart';

/// `GET /status` — bot status, build queue, and environment.
@freezed
abstract class SystemStatus with _$SystemStatus {
  const factory SystemStatus({
    required String appVersion,
    required String dartVersion,
    required String hostname,
    required int uptimeSeconds,
    required String uptime,
    required String workingDirectory,
    @Default([]) List<Job> running,
    @Default([]) List<Job> queued,
  }) = _SystemStatus;

  const SystemStatus._();

  factory SystemStatus.fromJson(Map<String, dynamic> json) =>
      _$SystemStatusFromJson(json);

  bool get hasActiveJobs => running.isNotEmpty || queued.isNotEmpty;
}
