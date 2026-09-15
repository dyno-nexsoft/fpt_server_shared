// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discord_user_info.freezed.dart';
part 'discord_user_info.g.dart';

/// A Discord account's display details, resolved server-side
/// (`AppState.nyxx.users.get`) wherever an admin listing needs to show more
/// than a bare id — `OwnerInfo`, `ApiKeyInfo`.
///
/// Always nullable at the call site (`DiscordUserInfo?`), not just this
/// class's own fields being optional — resolution can fail outright (the
/// account was deleted, or Discord's API is briefly unreachable), and the
/// caller's actual id must still render on its own either way.
@freezed
abstract class DiscordUserInfo with _$DiscordUserInfo {
  const factory DiscordUserInfo({
    String? username,
    String? displayName,
    String? avatarUrl,
  }) = _DiscordUserInfo;

  const DiscordUserInfo._();

  factory DiscordUserInfo.fromJson(Map<String, dynamic> json) =>
      _$DiscordUserInfoFromJson(json);

  /// The best available label — Discord's "global name" (what actually
  /// shows in the client nowadays) over the account username, over `null`
  /// when neither resolved — the caller decides what to fall back to (its
  /// own id, typically).
  String? get label => displayName ?? username;
}
