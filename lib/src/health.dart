import 'package:freezed_annotation/freezed_annotation.dart';

part 'health.freezed.dart';
part 'health.g.dart';

/// `GET /health` — the only unauthenticated endpoint.
@freezed
abstract class Health with _$Health {
  const factory Health({
    required bool ok,
    required String version,
    required String appVersion,
    required int uptimeSeconds,
    required String hostname,

    /// Where to open a remote desktop on this machine, if it offers one.
    ///
    /// Carried here rather than behind its own action so a client that
    /// already probes `/health` — which the dashboard's connection card
    /// does, on every session, unauthenticated — needs no second request to
    /// render the link.
    ///
    /// Nullable, and not only because a machine may run no remote desktop:
    /// the dashboard's login screen probes an arbitrary URL the user types,
    /// which may be an *older* server that never sends this field, and a
    /// required one would make `fromJson` throw there.
    String? remoteDesktopUrl,
  }) = _Health;

  factory Health.fromJson(Map<String, dynamic> json) => _$HealthFromJson(json);
}
