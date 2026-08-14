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
  }) = _ActionSchema;

  const ActionSchema._();

  factory ActionSchema.fromJson(Map<String, dynamic> json) =>
      _$ActionSchemaFromJson(json);

  bool get isDangerous => permission == Permission.invokeDangerous;
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
