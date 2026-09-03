import 'package:collection/collection.dart';

/// Gemini models `AiService` can call, shared so `gitlab.review`'s `model`
/// param — exposed to Discord, REST, MCP, and the website's form — has one
/// canonical set of choices instead of each surface hardcoding its own copy.
enum GeminiModel {
  flash,
  pro;

  /// The literal model id Google's Generative Language API expects.
  String get id => switch (this) {
    GeminiModel.flash => 'gemini-3.6-flash',
    GeminiModel.pro => 'gemini-3.6-pro',
  };

  static GeminiModel? tryParse(String? id) =>
      GeminiModel.values.where((e) => e.id == id).firstOrNull;
}
