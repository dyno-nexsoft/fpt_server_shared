import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _AiProviderInfo;

  factory AiProviderInfo.fromJson(Map<String, dynamic> json) =>
      _$AiProviderInfoFromJson(json);
}
