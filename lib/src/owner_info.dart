// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_info.freezed.dart';
part 'owner_info.g.dart';

/// One entry of `admin.owners.list`'s `owners` array.
///
/// `username`/`displayName`/`avatarUrl` are all nullable, not just optional
/// defaults — the bot resolves them from Discord at request time
/// (`AppState.nyxx.users.get`), and that lookup can fail (the account was
/// deleted, or the bot has never seen it and Discord's own API is briefly
/// unreachable). A bare id, the actual grant this dashboard manages, must
/// still render on its own either way.
@freezed
abstract class OwnerInfo with _$OwnerInfo {
  const factory OwnerInfo({
    required String id,
    String? username,
    String? displayName,
    String? avatarUrl,
  }) = _OwnerInfo;

  const OwnerInfo._();

  factory OwnerInfo.fromJson(Map<String, dynamic> json) =>
      _$OwnerInfoFromJson(json);

  /// The best available label — Discord's "global name" (what actually shows
  /// in the client nowadays) over the account username, over nothing but the
  /// raw id this dashboard already knows regardless of whether Discord
  /// resolved.
  String get label => displayName ?? username ?? id;
}
