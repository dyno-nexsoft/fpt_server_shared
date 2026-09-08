// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'param_type.dart';
import 'permission.dart';

part 'action_schema.freezed.dart';
part 'action_schema.g.dart';

/// One action's full parameter schema — `GET /api/v1/actions/{name}`, and
/// each entry of `GET /api/v1/actions`'s catalogue.
///
/// Descriptive metadata for a REST client or the dashboard's generated form,
/// not a validator — each side's own `parseJson` is that.
@freezed
abstract class ActionSchema with _$ActionSchema {
  const factory ActionSchema({
    required String name,
    @Default('') String description,
    required ActionKind kind,
    @PermissionConverter() required Permission permission,
    @Default([]) List<ActionParam> params,

    /// Whether this action reports intermediate progress a caller can watch
    /// live (`GET /api/v1/invocations/{id}/events`) while its request is
    /// still in flight. Declared here rather than inferred from a hardcoded
    /// action-name list, so the dashboard decides whether to open a progress
    /// stream from the catalogue alone — a new long-running action needs no
    /// dashboard change to get a real progress bar.
    ///
    /// Only meaningful for [ActionKind.mutation]: a [ActionKind.job] already
    /// streams through `GET /api/v1/jobs/{id}/events`, and a
    /// [ActionKind.query] finishes too fast to watch.
    @Default(false) bool supportsProgress,

    /// Whether this action belongs on the dashboard's "New Build" menu.
    ///
    /// Declared by the server rather than guessed client-side from the
    /// action's name — a client-side `name.startsWith('ci.')` once caught
    /// `ci.job.cancel`/`cancelAll`/`promote`/`delete` by the same prefix,
    /// listing them alongside the builds they act on instead of the build
    /// they start.
    @Default(false) bool isBuildMenu,

    /// Whether a general-purpose dashboard browsing the full catalogue
    /// should list this action at all.
    ///
    /// Defaults `true` (including when an older server omits the field
    /// entirely) so the safe failure is showing an action a screen has no
    /// form for yet, not hiding one a screen actually needs. `false` today
    /// only for `zentao.*` and `admin.owners.*` — real capabilities other
    /// callers (a Discord slash command, `fpt_server_mcp`) still reach, just
    /// not through this particular browse-everything view.
    @Default(true) bool exposedInDashboard,
  }) = _ActionSchema;

  const ActionSchema._();

  factory ActionSchema.fromJson(Map<String, dynamic> json) =>
      _$ActionSchemaFromJson(json);

  /// Whether this action deserves a confirmation, a warning style, and a
  /// place at the bottom of any list.
  ///
  /// `admin` counts, not just `invokeDangerous` — it is the strictly higher
  /// scope, so treating it as routine had it backwards. Nothing hit that
  /// until an `admin` action first appeared in a list a keyless visitor can
  /// browse (`ci.job.cancelAll`), which then rendered as an ordinary entry.
  bool get isDangerous =>
      permission == Permission.invokeDangerous ||
      permission == Permission.admin;
}

enum ActionKind {
  /// Reads state. Safe to call repeatedly, never posts to Discord.
  query,

  /// Changes state and completes within the request.
  mutation,

  /// Starts long-running work and returns a job id immediately.
  job,
}

@freezed
abstract class ActionParam with _$ActionParam {
  const factory ActionParam({
    required String name,
    @Default('') String description,
    required ParamType type,
    @JsonKey(name: 'required') @Default(false) bool isRequired,
    @Default([]) List<String> choices,
    @JsonKey(name: 'default') dynamic defaultValue,
    @Default(false) bool isBranchRef,

    /// A `string` param whose wire value is actually a JSON array of
    /// strings, one per logical entry (e.g. `gitlab.analyze`'s `urls` —
    /// there's no dedicated `ParamType` for "list of strings", since every
    /// other consumer of this schema only cares that the value is
    /// ultimately JSON-encoded text). The dashboard renders this as a
    /// multi-line field (one entry per line) instead of a single-line one,
    /// and splits/joins on `\n` when building/restoring the request body.
    @Default(false) bool isStringList,
  }) = _ActionParam;

  factory ActionParam.fromJson(Map<String, dynamic> json) =>
      _$ActionParamFromJson(json);
}

/// `Permission` serializes to/from its non-`.name` wire value (see
/// `Permission.toWire`/`fromWire`) — needed anywhere a `Permission` sits
/// inside a freezed class instead of being read off manually.
class PermissionConverter implements JsonConverter<Permission, String> {
  const PermissionConverter();

  @override
  Permission fromJson(String json) => Permission.fromWire(json);

  @override
  String toJson(Permission object) => object.toWire();
}
