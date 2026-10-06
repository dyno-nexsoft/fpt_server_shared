import 'package:collection/collection.dart';

/// AI models `AiService` can call, shared so `gitlab.review`'s and
/// `gitlab.translateArb`'s `model` param — exposed to Discord, REST, MCP,
/// and the website's form — has one canonical set of choices instead of
/// each surface hardcoding its own copy.
///
/// Deliberately just these four, matching what's actually enabled for this
/// project's API key — not every Gemini model Google offers.
enum AiModel {
  flash38,
  flash37,
  flash36,
  flash35,
  pro31;

  /// The literal model id Google's Generative Language API expects.
  String get id => switch (this) {
    AiModel.flash38 => 'gemini-3.8-flash',
    AiModel.flash37 => 'gemini-3.7-flash',
    AiModel.flash36 => 'gemini-3.6-flash',
    AiModel.flash35 => 'gemini-3.5-flash',
    AiModel.pro31 => 'gemini-3.1-pro',
  };

  /// Human-readable form for a picker — "Gemini 3.8 Flash", etc.
  String get label => switch (this) {
    AiModel.flash38 => 'Gemini 3.8 Flash',
    AiModel.flash37 => 'Gemini 3.7 Flash',
    AiModel.flash36 => 'Gemini 3.6 Flash',
    AiModel.flash35 => 'Gemini 3.5 Flash',
    AiModel.pro31 => 'Gemini 3.1 Pro',
  };

  static AiModel? tryParse(String? id) =>
      AiModel.values.firstWhereOrNull((e) => e.id == id);
}
