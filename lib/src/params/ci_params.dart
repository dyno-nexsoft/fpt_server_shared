// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import '../build_target.dart';

part 'ci_params.freezed.dart';
part 'ci_params.g.dart';

/// `ci.build`.
///
/// Branch and commit values are plain strings here — a branch name or a
/// commit hash — whatever the caller resolved them from.
@freezed
abstract class CiBuildParams with _$CiBuildParams {
  const factory CiBuildParams({
    /// Branch or commit hash of the `tbchat` repo.
    required String tbchat,

    /// Branch or commit hash of the `database` repo.
    required String database,

    /// Module branches or commit hashes; unset keeps the repo's default.
    String? im,
    String? wallet,
    String? cloudStorage,
    String? socialfi,
    @PlatformBuildConverter()
    @Default(PlatformBuild.androidIos)
    PlatformBuild platform,
    @Default(EnvironmentBuild.dev) EnvironmentBuild environment,
    String? releaseNotes,

    /// Overrides `build.sh`'s date-based build name — what `flutter build
    /// --build-name` takes. Unset keeps today's date.
    String? buildName,

    /// Overrides the time-of-day build number. Unset keeps the default.
    int? buildNumber,

    /// Builds and copies the artifact but does not push it to Firebase App
    /// Distribution.
    @Default(false) bool skipFirebaseDistribution,
  }) = _CiBuildParams;

  factory CiBuildParams.fromJson(Map<String, dynamic> json) =>
      _$CiBuildParamsFromJson(json);
}

/// `ci.gen` — generates proto and API docs for `socialfi`.
@freezed
abstract class CiGenParams with _$CiGenParams {
  const factory CiGenParams({
    @Default(EnvironmentBuild.dev) EnvironmentBuild environment,

    /// Branch of the `socialfi` module; unset uses the environment's default.
    String? socialfi,
  }) = _CiGenParams;

  factory CiGenParams.fromJson(Map<String, dynamic> json) =>
      _$CiGenParamsFromJson(json);
}

/// `ci.replace` — swaps the SDK inside `tbchat`.
@freezed
abstract class CiReplaceParams with _$CiReplaceParams {
  const factory CiReplaceParams({
    /// URL of the SDK archive.
    required String url,

    /// Branch or commit hash of the `tbchat` repo.
    required String tbchat,
  }) = _CiReplaceParams;

  factory CiReplaceParams.fromJson(Map<String, dynamic> json) =>
      _$CiReplaceParamsFromJson(json);
}

/// `ci.clean`.
@freezed
abstract class CiCleanParams with _$CiCleanParams {
  const factory CiCleanParams({
    /// `full` or `files`; unset means no flag at all, matching `/ci clean`.
    String? mode,
  }) = _CiCleanParams;

  factory CiCleanParams.fromJson(Map<String, dynamic> json) =>
      _$CiCleanParamsFromJson(json);
}
