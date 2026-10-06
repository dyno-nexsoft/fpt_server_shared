import 'package:freezed_annotation/freezed_annotation.dart';

import 'ai_model_ids.dart';

part 'ai_provider.freezed.dart';
part 'ai_provider.g.dart';

/// `admin.aiProvider.set`.
@freezed
abstract class AiProviderSetParams with _$AiProviderSetParams {
  const factory AiProviderSetParams({
    /// The backend to activate: `gemini` or `groq`.
    required String provider,

    /// Whether to try the other provider when the active one is down. Null
    /// leaves it as it is.
    bool? failover,

    /// The model id a provider answers a tier with — see [AiModelIds]. Each is
    /// null to leave that one as it is.
    String? geminiFlash,
    String? geminiPro,
    String? groqFlash,
    String? groqPro,
  }) = _AiProviderSetParams;

  factory AiProviderSetParams.fromJson(Map<String, dynamic> json) =>
      _$AiProviderSetParamsFromJson(json);
}

/// `admin.aiProvider.get` and `admin.aiProvider.set`: the backend now serving
/// AI requests, and which others could.
@freezed
abstract class AiProviderInfo with _$AiProviderInfo {
  const factory AiProviderInfo({
    required String provider,

    /// Every provider with at least one API key configured — the ones that can
    /// be selected.
    @Default(<String>[]) List<String> available,

    /// Whether a provider that is down hands its request to the other one.
    @Default(true) bool failover,

    /// The model id each provider uses for each tier.
    @Default(AiModelIds()) AiModelIds models,
  }) = _AiProviderInfo;

  factory AiProviderInfo.fromJson(Map<String, dynamic> json) =>
      _$AiProviderInfoFromJson(json);
}
