/// `POST /jobs/{id}/stream-token` — a short-lived credential for one job's
/// log stream, since a browser `EventSource` cannot send `X-API-Key`.
class StreamToken {
  const StreamToken({
    required this.token,
    required this.expiresInSeconds,
    required this.eventsUrl,
  });

  factory StreamToken.fromJson(Map<String, dynamic> json) => StreamToken(
    token: json['token'] as String,
    expiresInSeconds: (json['expires_in_seconds'] as num).toInt(),
    eventsUrl: json['events_url'] as String,
  );

  /// The literal the server leaves in [eventsUrl] where the token goes.
  static const tokenPlaceholder = '<token>';

  final String token;
  final int expiresInSeconds;

  /// A template: the stream's path with [tokenPlaceholder] where [token]
  /// belongs. Use [eventsUrlOn] to get a URL that can actually be opened.
  final String eventsUrl;

  /// The stream's URL on [origin], with [token] filled in.
  ///
  /// Opening [eventsUrl] as it is sends the placeholder itself, which the
  /// server refuses with a 401 — the dashboard did exactly that for months and
  /// silently fell back to polling every log.
  String eventsUrlOn(String origin) =>
      '$origin${eventsUrl.replaceFirst(tokenPlaceholder, Uri.encodeQueryComponent(token))}';

  Map<String, Object?> toJson() => {
    'token': token,
    'expires_in_seconds': expiresInSeconds,
    'events_url': eventsUrl,
  };
}
