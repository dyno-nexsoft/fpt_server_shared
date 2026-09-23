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
    // The live Cloudflare tunnel to the noVNC remote desktop, when the
    // caller has `Permission.admin` and one is currently up — the fixed LAN
    // address otherwise (including for every non-admin/anonymous caller;
    // see `SystemStatusAction.run`'s doc comment for why this is gated).
    // Always a real value, never null: unlike `Health.remoteDesktopUrl`
    // (which is absent on a machine with no remote desktop at all), this
    // field only ever varies in *which* URL, not whether one exists.
    required String remoteDesktopUrl,
    @Default([]) List<Job> running,
    @Default([]) List<Job> queued,
  }) = _SystemStatus;

  const SystemStatus._();

  factory SystemStatus.fromJson(Map<String, dynamic> json) =>
      _$SystemStatusFromJson(json);

  bool get hasActiveJobs => running.isNotEmpty || queued.isNotEmpty;
}
