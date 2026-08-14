import 'package:freezed_annotation/freezed_annotation.dart';

import 'job.dart';

part 'artifact.freezed.dart';
part 'artifact.g.dart';

@freezed
abstract class ArtifactFile with _$ArtifactFile {
  const factory ArtifactFile({
    required String name,
    @Default(false) bool isDirectory,
    int? size,
    required DateTime modified,
  }) = _ArtifactFile;

  factory ArtifactFile.fromJson(Map<String, dynamic> json) =>
      _$ArtifactFileFromJson(json);
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
