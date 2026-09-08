// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'permission.dart';

part 'api_key_info.freezed.dart';
part 'api_key_info.g.dart';

/// One entry of `admin.apiKeys.list`'s `keys` array.
@freezed
abstract class ApiKeyInfo with _$ApiKeyInfo {
  const factory ApiKeyInfo({
    required String id,
    required String name,
    required String keyHash,

    /// `List<String>`, not `List<Permission>`: each entry is a `Permission`'s
    /// Dart-convention `.name` (`invokeDangerous`, not [Permission.toWire]'s
    /// `invoke_dangerous`) — this is how API key scopes are actually stored
    /// in Hive today, a separate, pre-existing format from the REST-facing
    /// wire value `toWire` fixes elsewhere. Kept as free text rather than
    /// `List<Permission>` so an unparseable scope round-trips instead of
    /// silently disappearing.
    @Default([]) List<String> scopes,

    /// A Discord snowflake, always read as a string — routinely exceeds the
    /// 2^53 precision limit of a browser's JS engine. This reader
    /// additionally tolerates a raw JSON number for older persisted records.
    @JsonKey(fromJson: _discordUserIdFromJson) String? discordUserId,

    /// When this key last successfully authenticated a request — null if it
    /// has never been used since that started being recorded.
    DateTime? lastUsedAt,
  }) = _ApiKeyInfo;

  const ApiKeyInfo._();

  factory ApiKeyInfo.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyInfoFromJson(json);

  bool get isAdmin => scopes.contains(Permission.admin.name);

  bool can(Permission permission) =>
      isAdmin || scopes.contains(permission.name);
}

String? _discordUserIdFromJson(Object? value) => value?.toString();
