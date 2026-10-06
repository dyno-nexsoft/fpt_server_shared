// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import '../ai_model.dart';
import '../gitlab_mr_url.dart';
import '../tbchat_module.dart';

part 'gitlab_params.freezed.dart';
part 'gitlab_params.g.dart';

/// An MR on the wire is one string — the `project!iid` form [GitLabMrUrl]
/// prints, which the server reads as readily as a pasted GitLab URL.
class GitLabMrUrlConverter implements JsonConverter<GitLabMrUrl, String> {
  const GitLabMrUrlConverter();

  @override
  GitLabMrUrl fromJson(String json) =>
      GitLabMrUrl.tryParse(json) ??
      (throw FormatException('Not a GitLab merge request: $json'));

  @override
  String toJson(GitLabMrUrl object) => object.storeKey;
}

/// A tbchat module on the wire is [TbchatModule.toWire], which differs from
/// the enum's own name for `cloudStorage` and `socialfi`.
class TbchatModuleConverter implements JsonConverter<TbchatModule, String> {
  const TbchatModuleConverter();

  @override
  TbchatModule fromJson(String json) => TbchatModule.fromWire(json);

  @override
  String toJson(TbchatModule object) => object.toWire();
}

/// `gitlab.review`.
@freezed
abstract class GitlabReviewParams with _$GitlabReviewParams {
  const factory GitlabReviewParams({
    @GitLabMrUrlConverter() required GitLabMrUrl url,
    @JsonKey(fromJson: AiModel.parse) @Default(AiModel.flash) AiModel model,
  }) = _GitlabReviewParams;

  factory GitlabReviewParams.fromJson(Map<String, dynamic> json) =>
      _$GitlabReviewParamsFromJson(json);
}

/// `gitlab.translateArb`.
@freezed
abstract class GitlabTranslateArbParams with _$GitlabTranslateArbParams {
  const factory GitlabTranslateArbParams({
    @TbchatModuleConverter() required TbchatModule module,

    /// Branch to read the current `.arb` files from and open the MR into.
    required String targetBranch,
    @JsonKey(fromJson: AiModel.parse) @Default(AiModel.flash) AiModel model,
  }) = _GitlabTranslateArbParams;

  factory GitlabTranslateArbParams.fromJson(Map<String, dynamic> json) =>
      _$GitlabTranslateArbParamsFromJson(json);
}

/// `gitlab.review.history` and `gitlab.translateArb.history`.
@freezed
abstract class HistoryListParams with _$HistoryListParams {
  const factory HistoryListParams({
    /// The server defaults to 20 and caps at 100.
    int? limit,
  }) = _HistoryListParams;

  factory HistoryListParams.fromJson(Map<String, dynamic> json) =>
      _$HistoryListParamsFromJson(json);
}

/// `gitlab.review.history.delete` and `gitlab.translateArb.history.delete`.
@freezed
abstract class HistoryDeleteParams with _$HistoryDeleteParams {
  const factory HistoryDeleteParams({required String id}) = _HistoryDeleteParams;

  factory HistoryDeleteParams.fromJson(Map<String, dynamic> json) =>
      _$HistoryDeleteParamsFromJson(json);
}
