/// `GET /health` — the only unauthenticated endpoint. Immutable, hand-written
/// (no codegen): five scalar fields don't earn the dependency-version
/// coupling a generator would put on every consumer of this package.
class Health {
  const Health({
    required this.ok,
    required this.version,
    required this.appVersion,
    required this.uptimeSeconds,
    required this.hostname,
  });

  final bool ok;

  /// The REST API version, e.g. `v1` — not the server's own release version,
  /// see [appVersion].
  final String version;

  /// The server's release version (kept in sync with `pubspec.yaml`'s
  /// `version:` by hand on the server side).
  final String appVersion;

  final int uptimeSeconds;
  final String hostname;

  factory Health.fromJson(Map<String, Object?> json) => Health(
    ok: json['ok'] as bool,
    version: json['version'] as String,
    appVersion: json['app_version'] as String,
    uptimeSeconds: json['uptime_seconds'] as int,
    hostname: json['hostname'] as String,
  );

  Map<String, Object?> toJson() => {
    'ok': ok,
    'version': version,
    'app_version': appVersion,
    'uptime_seconds': uptimeSeconds,
    'hostname': hostname,
  };
}
