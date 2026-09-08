import 'package:freezed_annotation/freezed_annotation.dart';

import 'job.dart';

part 'artifact.freezed.dart';
part 'artifact.g.dart';

@freezed
abstract class ArtifactFile with _$ArtifactFile {
  /// Private constructor: required by freezed before custom getters/methods
  /// may be added to the class.
  const ArtifactFile._();

  const factory ArtifactFile({
    required String name,
    @Default(false) bool isDirectory,
    int? size,
    required DateTime modified,
  }) = _ArtifactFile;

  factory ArtifactFile.fromJson(Map<String, dynamic> json) =>
      _$ArtifactFileFromJson(json);

  /// Whether this is an iOS app archive — the only file type that gets an
  /// OTA-install action (see [iosInstallUrl]).
  bool get isIpa => name.toLowerCase().endsWith('.ipa');

  /// The direct download/view URL for this file, inside a listing served at
  /// `origin/listingKey/`.
  String downloadUrl({required String origin, required String listingKey}) =>
      '$origin/$listingKey/${Uri.encodeComponent(name)}';

  /// Apple's over-the-air install handoff URL for this `.ipa`: the device
  /// fetches the manifest (served by `ftp_handler`'s `manifest.plist?ipa=`
  /// route), which points back at this file. Requires an iOS device *and*
  /// HTTPS — a bare `http://` [origin] will not trigger the install.
  String iosInstallUrl({required String origin, required String listingKey}) {
    final ipaPath = Uri.encodeComponent('$listingKey/$name');
    final manifestUrl = '$origin/manifest.plist?ipa=$ipaPath';
    return 'itms-services://?action=download-manifest'
        '&url=${Uri.encodeComponent(manifestUrl)}';
  }
}

/// `GET /api/v1/artifacts/{key}` — one job's `build/<artifactKey>/` output.
@freezed
abstract class ArtifactListing with _$ArtifactListing {
  const factory ArtifactListing({
    required String key,
    @Default([]) List<ArtifactFile> files,

    /// The job this artifact directory belongs to, when one is known — null
    /// for a directory whose owning job aged out of history.
    Job? job,
  }) = _ArtifactListing;

  factory ArtifactListing.fromJson(Map<String, dynamic> json) =>
      _$ArtifactListingFromJson(json);
}
