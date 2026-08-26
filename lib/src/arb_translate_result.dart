import 'package:freezed_annotation/freezed_annotation.dart';

part 'arb_translate_result.freezed.dart';
part 'arb_translate_result.g.dart';

/// Result of `gitlab.translateArb` — shared so the website can render it as
/// a typed card and the MCP tool can describe it, instead of both treating
/// it as an opaque JSON blob the way most mutation actions' results are.
@freezed
abstract class ArbTranslateResult with _$ArbTranslateResult {
  const ArbTranslateResult._();

  const factory ArbTranslateResult({
    /// tbchat module folder name, e.g. `social_fi`, `wallet`, `im`.
    required String module,

    /// Branch the arb files were read from, and the MR was opened into.
    required String targetBranch,

    /// Null when there was nothing missing to translate — no branch/MR made.
    String? mrUrl,

    @Default(0) int translatedKeyCount,
    @Default(<String>[]) List<String> localesUpdated,

    /// Arb filename (e.g. `im_ja.arb`) to how many keys were written into
    /// it this run — both newly translated ones and any earlier,
    /// not-yet-merged run's carried forward.
    @Default(<String, int>{}) Map<String, int> keysByFile,

    /// Keys the AI failed to translate (a batch call errored, or came back
    /// in a shape the parser couldn't use) — still reported rather than
    /// silently dropped, so a partial run doesn't look like a complete one.
    @Default(0) int failedKeyCount,

    /// Pre-existing data-quality issues found in the module's own arb
    /// files (currently: a key repeated more than once in one file — see
    /// `findDuplicateArbKeys`) — reported rather than fixed, since deciding
    /// which occurrence was meant is a judgment call this pipeline
    /// shouldn't make silently.
    @Default(<String>[]) List<String> warnings,
  }) = _ArbTranslateResult;

  factory ArbTranslateResult.fromJson(Map<String, dynamic> json) =>
      _$ArbTranslateResultFromJson(json);

  bool get skipped => mrUrl == null;
}
