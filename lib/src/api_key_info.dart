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

    /// Comma-of-strings, not `List<Permission>`: a scope is a `Permission`
    /// name today but this is stored/compared as free text, matching how
    /// `admin.apiKeys.list` itself reads it back off Hive.
    @Default([]) List<String> scopes,

    /// A Discord snowflake, always read as a string — routinely exceeds the
    /// 2^53 precision limit of a browser's JS engine. This reader
    /// additionally tolerates a raw JSON number for older persisted records.
    @JsonKey(fromJson: _discordUserIdFromJson) String? discordUserId,
  }) = _ApiKeyInfo;

  const ApiKeyInfo._();

  factory ApiKeyInfo.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyInfoFromJson(json);

  bool get isAdmin => scopes.contains(Permission.admin.toWire());

  bool can(Permission permission) =>
      isAdmin || scopes.contains(permission.toWire());
}

String? _discordUserIdFromJson(Object? value) => value?.toString();
