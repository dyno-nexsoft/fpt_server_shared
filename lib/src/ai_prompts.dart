import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_prompts.freezed.dart';
part 'ai_prompts.g.dart';

/// The project-specific text used by the AI review and translation prompts.
///
/// The structure around them (how the files are shown, how findings are
/// reported, the severities, the response format) stays in code.
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

  /// Any fields that are empty or exceed the supported length.
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

/// Legacy request data for clients that still serialize AI prompt settings.
@freezed
abstract class AiPromptsSetParams with _$AiPromptsSetParams {
  const factory AiPromptsSetParams({required AiPrompts prompts}) =
      _AiPromptsSetParams;

  factory AiPromptsSetParams.fromJson(Map<String, dynamic> json) =>
      _$AiPromptsSetParamsFromJson(json);
}

/// Legacy response data for clients that still deserialize AI prompt settings.
@freezed
abstract class AiPromptsInfo with _$AiPromptsInfo {
  const factory AiPromptsInfo({
    required AiPrompts prompts,
    required AiPrompts defaults,
  }) = _AiPromptsInfo;

  factory AiPromptsInfo.fromJson(Map<String, dynamic> json) =>
      _$AiPromptsInfoFromJson(json);
}
