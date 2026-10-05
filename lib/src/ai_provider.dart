import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_provider.freezed.dart';
part 'ai_provider.g.dart';

/// `admin.aiProvider.set`.
@freezed
abstract class AiProviderSetParams with _$AiProviderSetParams {
  const factory AiProviderSetParams({
    /// The backend to activate: `gemini` or `groq`.
    required String provider,
  }) = _AiProviderSetParams;

  factory AiProviderSetParams.fromJson(Map<String, dynamic> json) =>
      _$AiProviderSetParamsFromJson(json);
}

/// `admin.aiProvider.get` and `admin.aiProvider.set`: the backend now serving
/// AI requests.
@freezed
abstract class AiProviderInfo with _$AiProviderInfo {
  const factory AiProviderInfo({required String provider}) = _AiProviderInfo;

  factory AiProviderInfo.fromJson(Map<String, dynamic> json) =>
      _$AiProviderInfoFromJson(json);
}
