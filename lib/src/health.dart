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

    /// A live link into the running bot process's own Dart DevTools, if the
    /// VM service was up by the time the gateway connected — same nullable
    /// reasoning as [remoteDesktopUrl], plus the VM service itself being
    /// disabled or the info call failing.
    String? devToolsUrl,

    /// A `discord://-/channels/<server>/<channel>` deep link into the guild
    /// and channel this bot operates in, for the login screen's "someone
    /// with no key yet" button — same reasoning as [remoteDesktopUrl] for
    /// carrying it here rather than behind its own action: the login screen
    /// already probes `/health`, unauthenticated, before any key exists to
    /// invoke an action with. Nullable for the same older-server reason too.
    String? discordChannelUrl,
  }) = _Health;

  factory Health.fromJson(Map<String, dynamic> json) => _$HealthFromJson(json);
}
