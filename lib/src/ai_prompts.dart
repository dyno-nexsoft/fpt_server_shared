import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_prompts.freezed.dart';
part 'ai_prompts.g.dart';

/// The parts of the AI prompts that describe *this* project rather than the
/// task, so an admin can adjust them as the project changes — a Flutter
/// upgrade, a new architecture rule — without a deploy.
///
/// The structure around them (how the files are shown, how findings are
/// reported, the severities, the response format) stays in code: a wrong edit
/// there breaks the output, not just its taste.
@freezed
abstract class AiPrompts with _$AiPrompts {
  const AiPrompts._();

  const factory AiPrompts({
    /// The opening of the review prompt: who the reviewer is and what the
    /// project is, including the versions it is on.
    required String reviewIntro,

    /// The project conventions the review checks against — a Markdown list.
    required String reviewConventions,

    /// The opening of the translation prompt: what app the strings are for.
    required String translatorIntro,
  }) = _AiPrompts;

  factory AiPrompts.fromJson(Map<String, dynamic> json) =>
      _$AiPromptsFromJson(json);

  /// The longest any one field may be: these are paid for on every batch of
  /// every review, so a runaway paste is refused rather than silently costly.
  static const maxLength = 8000;

  /// Everything wrong with these prompts, in words an admin can act on.
  List<String> problems() {
    final fields = {
      'reviewIntro': reviewIntro,
      'reviewConventions': reviewConventions,
      'translatorIntro': translatorIntro,
    };
    return [
      for (final entry in fields.entries)
        if (entry.value.trim().isEmpty)
          '${entry.key} must not be empty.'
        else if (entry.value.length > maxLength)
          '${entry.key} is longer than $maxLength characters.',
    ];
  }
}

/// `prompts.set`.
@freezed
abstract class AiPromptsSetParams with _$AiPromptsSetParams {
  const factory AiPromptsSetParams({required AiPrompts prompts}) =
      _AiPromptsSetParams;

  factory AiPromptsSetParams.fromJson(Map<String, dynamic> json) =>
      _$AiPromptsSetParamsFromJson(json);
}

/// `prompts.get` and `prompts.set`: the prompts in force, and the built-in ones
/// to reset to.
@freezed
abstract class AiPromptsInfo with _$AiPromptsInfo {
  const factory AiPromptsInfo({
    required AiPrompts prompts,
    required AiPrompts defaults,
  }) = _AiPromptsInfo;

  factory AiPromptsInfo.fromJson(Map<String, dynamic> json) =>
      _$AiPromptsInfoFromJson(json);
}
