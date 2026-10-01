import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_params.freezed.dart';
part 'admin_params.g.dart';

/// `admin.apiKeys.add`.
///
/// The wire shape of every action's parameters lives in `fpt_server_shared`,
/// not in the server: the dashboard and `fpt_server_mcp` build these and send
/// [toJson], the server parses into them, so a field is spelled once.
@freezed
abstract class ApiKeyAddParams with _$ApiKeyAddParams {
  const factory ApiKeyAddParams({
    /// Display name — audit log, `CREATED_BY` on builds.
    required String name,
  }) = _ApiKeyAddParams;

  factory ApiKeyAddParams.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyAddParamsFromJson(json);
}

/// `admin.apiKeys.edit`.
@freezed
abstract class ApiKeyEditParams with _$ApiKeyEditParams {
  const factory ApiKeyEditParams({
    required String id,

    /// Permission `.name`s — `read`, `invoke`, `invokeDangerous`, `admin`.
    required List<String> scopes,

    /// Null leaves the name unchanged.
    String? name,
  }) = _ApiKeyEditParams;

  factory ApiKeyEditParams.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyEditParamsFromJson(json);
}

/// `admin.apiKeys.remove`.
@freezed
abstract class ApiKeyRemoveParams with _$ApiKeyRemoveParams {
  const factory ApiKeyRemoveParams({required String id}) = _ApiKeyRemoveParams;

  factory ApiKeyRemoveParams.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyRemoveParamsFromJson(json);
}

/// `admin.owners.add` and `admin.owners.remove`.
@freezed
abstract class OwnerParams with _$OwnerParams {
  const factory OwnerParams({
    /// A Discord snowflake as a string — it exceeds what a browser's number
    /// type holds exactly.
    required String userId,
  }) = _OwnerParams;

  factory OwnerParams.fromJson(Map<String, dynamic> json) =>
      _$OwnerParamsFromJson(json);
}

/// `admin.logs.tail`.
///
/// With neither [fromLine] nor [toLine] it reads the newest [lines]; with a
/// bound it reads that range, [lines] long when only one end is given.
@freezed
abstract class LogsTailParams with _$LogsTailParams {
  const factory LogsTailParams({
    /// How many lines — the server defaults to 200 and caps at 1000.
    int? lines,

    /// `server` (default) or `novnc`.
    String? source,

    /// First line to return, absolute and 1-based.
    int? fromLine,

    /// Last line to return, inclusive.
    int? toLine,
  }) = _LogsTailParams;

  factory LogsTailParams.fromJson(Map<String, dynamic> json) =>
      _$LogsTailParamsFromJson(json);
}
