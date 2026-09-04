import 'package:collection/collection.dart';

/// Gemini models `AiService` can call, shared so `gitlab.review`'s and
/// `gitlab.translateArb`'s `model` param — exposed to Discord, REST, MCP,
/// and the website's form — has one canonical set of choices instead of
/// each surface hardcoding its own copy.
///
/// Deliberately just these four, matching what's actually enabled for this
/// project's API key — not every Gemini model Google offers.
enum GeminiModel {
  flash38,
  flash37,
  flash36,
  flash35,
  pro31;

  /// The literal model id Google's Generative Language API expects.
  String get id => switch (this) {
    GeminiModel.flash38 => 'gemini-3.8-flash',
    GeminiModel.flash37 => 'gemini-3.7-flash',
    GeminiModel.flash36 => 'gemini-3.6-flash',
    GeminiModel.flash35 => 'gemini-3.5-flash',
    GeminiModel.pro31 => 'gemini-3.1-pro',
  };

  /// Human-readable form for a picker — "Gemini 3.8 Flash", etc.
  String get label => switch (this) {
    GeminiModel.flash38 => 'Gemini 3.8 Flash',
    GeminiModel.flash37 => 'Gemini 3.7 Flash',
    GeminiModel.flash36 => 'Gemini 3.6 Flash',
    GeminiModel.flash35 => 'Gemini 3.5 Flash',
    GeminiModel.pro31 => 'Gemini 3.1 Pro',
  };

  static GeminiModel? tryParse(String? id) =>
      GeminiModel.values.firstWhereOrNull((e) => e.id == id);
}
