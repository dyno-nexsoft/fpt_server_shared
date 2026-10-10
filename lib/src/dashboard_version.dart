/// `/version.json` — which commit the served dashboard was built from, and
/// when. Written by `system.restart` after a successful dashboard rebuild; a
/// tab compares it with the commit baked into its own build to know it is
/// out of date.
class DashboardVersion {
  const DashboardVersion({required this.commit, required this.builtAt});

  factory DashboardVersion.fromJson(Map<String, dynamic> json) =>
      DashboardVersion(
        commit: json['commit'] as String,
        builtAt: DateTime.parse(json['built_at'] as String),
      );

  final String commit;
  final DateTime builtAt;

  Map<String, Object?> toJson() => {
    'commit': commit,
    'built_at': builtAt.toUtc().toIso8601String(),
  };
}
