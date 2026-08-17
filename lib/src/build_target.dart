import 'package:collection/collection.dart';

/// Build target enums shared by the Discord converters, the CI request
/// builders, and the REST layer.
enum EnvironmentBuild {
  dev,
  test,
  prod;

  /// Branch of the proto/doc repository that pairs with this environment.
  String get protoBranch => switch (this) {
    EnvironmentBuild.dev => 'dev',
    EnvironmentBuild.test => 'qa',
    EnvironmentBuild.prod => 'main',
  };

  /// Default `socialfi` branch used by `/gen` when none is supplied.
  String get defaultSocialfiBranch => switch (this) {
    EnvironmentBuild.dev => 'develop_socialfi',
    EnvironmentBuild.test => 'new_tbchat_test',
    EnvironmentBuild.prod => 'new_tbchat_release',
  };

  static EnvironmentBuild? tryParse(String? name) =>
      EnvironmentBuild.values.where((e) => e.name == name).firstOrNull;
}

enum PlatformBuild {
  android,
  ios,
  mobile,
  macos,
  windows,
  desktop;

  static PlatformBuild? tryParse(String? name) =>
      PlatformBuild.values.where((e) => e.name == name).firstOrNull;
}

/// `ci.clean`'s `mode` param. The wire value (Discord option, REST param,
/// cron) is always this enum's plain `name` — only `CleanRequest.toCommand`
/// converts it to the raw CLI flag `clean.sh` expects, via [flag].
enum CleanMode {
  full,
  files;

  /// The `--full`/`--files` flag `clean.sh` expects on its command line.
  String get flag => '--$name';

  static CleanMode? tryParse(String? name) =>
      CleanMode.values.where((e) => e.name == name).firstOrNull;
}
