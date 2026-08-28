import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

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
  androidIos,
  macos,
  windows,
  macosWindows;

  /// The wire spelling for the two combined platforms — `+` is not a legal
  /// Dart identifier character, so [androidIos]/[macosWindows] can't just be
  /// [name] the way every other value's wire form still is.
  String toWire() => switch (this) {
    PlatformBuild.androidIos => 'android+ios',
    PlatformBuild.macosWindows => 'macos+windows',
    _ => name,
  };

  /// Parses a wire value. Also accepts `mobile`/`desktop` — the spelling
  /// [androidIos]/[macosWindows] replaced — because a job's persisted
  /// `actionParams` (read back verbatim on Retry) can still carry the old
  /// value from before that rename, and a retry must resolve to the same
  /// platform rather than fail validation on data the rename never touched.
  static PlatformBuild? tryParse(String? value) => switch (value) {
    'mobile' => PlatformBuild.androidIos,
    'desktop' => PlatformBuild.macosWindows,
    _ => PlatformBuild.values.where((e) => e.toWire() == value).firstOrNull,
  };
}

/// Serializes [PlatformBuild] through [PlatformBuild.toWire]/
/// [PlatformBuild.tryParse] instead of json_serializable's default `.name`
/// mapping, which cannot represent [PlatformBuild.androidIos]/
/// [PlatformBuild.macosWindows]'s wire spelling — no Dart identifier can
/// contain `+`.
class PlatformBuildConverter implements JsonConverter<PlatformBuild, String> {
  const PlatformBuildConverter();

  @override
  PlatformBuild fromJson(String json) =>
      PlatformBuild.tryParse(json) ?? PlatformBuild.androidIos;

  @override
  String toJson(PlatformBuild object) => object.toWire();
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
