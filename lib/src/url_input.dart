/// Query keys that only say where a link was shared from or who clicked it — never what it points to.
bool _isTrackingKey(String key) =>
    key.startsWith('utm_') ||
    key.startsWith('share_') ||
    const {
      'fbclid',
      'gclid',
      'igshid',
      'mibextid',
      'si',
      'is_from_webapp',
      'sender_device',
      'sender_web_id',
      'web_id',
      'is_copy_url',
      '_r',
      '_t',
    }.contains(key);

/// Cleans a link someone typed or pasted into a form, so what is sent and stored is short and has a scheme.
///
/// - A missing scheme is `https://` (what [raw] has when it was pasted without one, `www.tiktok.com/@a`).
/// - The fragment (`#…`) goes, and so do userinfo and an empty query.
/// - With [dropQuery] the whole query goes — for a link whose address is its path (a TikTok post), where the query is
///   only share tracking — except the keys in [keepKeys] (the `v` of a YouTube `watch?v=…`, which is the video).
///   Without it only known tracking keys go, since another link (a signed download, say) may need the rest.
///
/// Null when [raw] is empty or is not an `http(s)` link with a host.
String? tidyUrl(String raw, {bool dropQuery = false, Set<String> keepKeys = const {}}) {
  var text = raw.trim();
  if (text.isEmpty) return null;
  if (text.startsWith('//')) text = text.substring(2);
  if (!RegExp(r'^[A-Za-z][A-Za-z0-9+.\-]*://').hasMatch(text)) text = 'https://$text';

  final uri = Uri.tryParse(text);
  if (uri == null || !(uri.scheme == 'http' || uri.scheme == 'https') || uri.host.isEmpty) return null;
  // A bare word is not a link; a host needs a dot (or be localhost / an address).
  if (!uri.host.contains('.') && !uri.host.contains(':') && uri.host != 'localhost') return null;

  final kept = {
    for (final entry in uri.queryParametersAll.entries)
      if (dropQuery ? keepKeys.contains(entry.key) : !_isTrackingKey(entry.key)) entry.key: entry.value,
  };
  return Uri(
    scheme: uri.scheme,
    host: uri.host,
    port: uri.hasPort ? uri.port : null,
    path: uri.path,
    queryParameters: kept.isEmpty ? null : kept,
  ).toString();
}
