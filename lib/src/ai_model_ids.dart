import 'package:freezed_annotation/freezed_annotation.dart';

import 'ai_model.dart';

part 'ai_model_ids.freezed.dart';
part 'ai_model_ids.g.dart';

/// The model id each AI provider answers each [AiModel] tier with.
///
/// Admin-managed rather than compiled in: providers retire and rename models
/// (a Groq id that stops being served fails every request it is asked), and
/// the fix should be an edit on the dashboard, not a release. The defaults are
/// only where an installation starts.
@freezed
abstract class AiModelIds with _$AiModelIds {
  const AiModelIds._();

  const factory AiModelIds({
    @Default('gemini-3.6-flash') String geminiFlash,
    @Default('gemini-3.1-pro') String geminiPro,
    @Default('openai/gpt-oss-20b') String groqFlash,
    @Default('openai/gpt-oss-120b') String groqPro,
  }) = _AiModelIds;

  factory AiModelIds.fromJson(Map<String, dynamic> json) =>
      _$AiModelIdsFromJson(json);

  /// The longest id accepted: a typo-guard, not a real model name limit.
  static const maxLength = 100;

  /// The id [provider] (`gemini` or `groq`) uses for [tier].
  String idFor(String provider, AiModel tier) => switch ((provider, tier)) {
    ('groq', AiModel.flash) => groqFlash,
    ('groq', AiModel.pro) => groqPro,
    (_, AiModel.flash) => geminiFlash,
    (_, AiModel.pro) => geminiPro,
  };

  /// Every id that is empty, has whitespace, or is implausibly long.
  List<String> problems() {
    final fields = {
      'gemini_flash': geminiFlash,
      'gemini_pro': geminiPro,
      'groq_flash': groqFlash,
      'groq_pro': groqPro,
    };
    return [
      for (final entry in fields.entries)
        if (entry.value.isEmpty ||
            entry.value.contains(RegExp(r'\s')) ||
            entry.value.length > maxLength)
          '${entry.key} must be a model id with no spaces '
              '(up to $maxLength characters).',
    ];
  }
}
