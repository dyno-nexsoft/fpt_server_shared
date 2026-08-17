import 'package:collection/collection.dart';

/// Simplified permission tier for a self-service REST API key.
///
/// Replaces free-text `scopes` (comma-separated `Permission` names, which a
/// caller had to spell exactly right — `invokeDangerous` vs the description's
/// own `invoke_dangerous` silently dropped the scope). Every key now gets
/// exactly the same permissions a Discord member of that tier already has:
/// [user] mirrors a non-owner (`read` + `invoke`), [admin] mirrors an owner.
/// `admin` is never actually broader than what the caller could already do
/// from Discord — see `fpt_server`'s `ApiKeyAddAction`, which downgrades an
/// `admin` request from a non-owner to [user] rather than granting it.
enum ApiKeyRole {
  user,
  admin;

  static ApiKeyRole? tryParse(String? name) =>
      ApiKeyRole.values.where((r) => r.name == name).firstOrNull;
}
