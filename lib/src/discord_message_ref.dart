import 'package:freezed_annotation/freezed_annotation.dart';

part 'discord_message_ref.freezed.dart';
part 'discord_message_ref.g.dart';

/// Where a job's Discord message lives, so it can be re-attached after a
/// restart without scanning channel history.
///
/// Both ids are strings on the wire, not JSON numbers: a Discord snowflake
/// routinely exceeds the 2^53 precision limit of both Hive's float storage
/// and a browser's JS engine.
@freezed
abstract class DiscordMessageRef with _$DiscordMessageRef {
  const factory DiscordMessageRef({
    required String channelId,
    required String messageId,
  }) = _DiscordMessageRef;

  factory DiscordMessageRef.fromJson(Map<String, dynamic> json) =>
      _$DiscordMessageRefFromJson(json);
}
