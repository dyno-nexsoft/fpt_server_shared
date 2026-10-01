// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'zentao_params.freezed.dart';
part 'zentao_params.g.dart';

/// `zentao.report.start` — opens today's daily-report task.
@freezed
abstract class ZentaoReportStartParams with _$ZentaoReportStartParams {
  const factory ZentaoReportStartParams({
    /// Markdown; empty starts a report with no text yet.
    @Default('') String description,
  }) = _ZentaoReportStartParams;

  factory ZentaoReportStartParams.fromJson(Map<String, dynamic> json) =>
      _$ZentaoReportStartParamsFromJson(json);
}

/// `zentao.report.edit`. An empty [description] is a legitimate edit — it
/// clears the text — so it is never "missing".
@freezed
abstract class ZentaoReportEditParams with _$ZentaoReportEditParams {
  const factory ZentaoReportEditParams({
    required int taskId,
    @Default('') String description,
  }) = _ZentaoReportEditParams;

  factory ZentaoReportEditParams.fromJson(Map<String, dynamic> json) =>
      _$ZentaoReportEditParamsFromJson(json);
}

/// `zentao.report.get`, `.finish` and `.close` — all keyed by the task alone.
@freezed
abstract class ZentaoTaskParams with _$ZentaoTaskParams {
  const factory ZentaoTaskParams({required int taskId}) = _ZentaoTaskParams;

  factory ZentaoTaskParams.fromJson(Map<String, dynamic> json) =>
      _$ZentaoTaskParamsFromJson(json);
}

/// `zentao.link` — maps the caller's Discord account to a Zentao account.
@freezed
abstract class ZentaoLinkParams with _$ZentaoLinkParams {
  const factory ZentaoLinkParams({
    required String account,
    required String password,
  }) = _ZentaoLinkParams;

  factory ZentaoLinkParams.fromJson(Map<String, dynamic> json) =>
      _$ZentaoLinkParamsFromJson(json);
}

/// `zentao.config.setProject`.
@freezed
abstract class ZentaoProjectParams with _$ZentaoProjectParams {
  const factory ZentaoProjectParams({required int projectId}) =
      _ZentaoProjectParams;

  factory ZentaoProjectParams.fromJson(Map<String, dynamic> json) =>
      _$ZentaoProjectParamsFromJson(json);
}

/// `zentao.config.setExecution`.
@freezed
abstract class ZentaoExecutionParams with _$ZentaoExecutionParams {
  const factory ZentaoExecutionParams({required int executionId}) =
      _ZentaoExecutionParams;

  factory ZentaoExecutionParams.fromJson(Map<String, dynamic> json) =>
      _$ZentaoExecutionParamsFromJson(json);
}
