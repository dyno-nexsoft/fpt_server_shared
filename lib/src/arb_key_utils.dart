import 'dart:convert';

/// A valid arb key: a valid Dart identifier, matching what `flutter
/// gen-l10n` requires (it becomes a generated method name). Guards against
/// pre-existing bad data — confirmed live against tbchat's own arb files: a
/// stray `""` key with an English placeholder value in one locale, which
/// got AI-translated into every other locale in the module before this
/// guard existed.
final _arbKeyPattern = RegExp(r'^[a-zA-Z_][a-zA-Z0-9_]*$');

bool isValidArbKey(String key) => _arbKeyPattern.hasMatch(key);

/// One raw top-level `"key": "value"` occurrence found in an arb file's
/// text — see [scanRawStringEntries] for why this exists instead of just
/// using `jsonDecode`.
class RawArbEntry {
  const RawArbEntry(this.key, this.value);
  final String key;
  final String value;
}

/// A key that appears more than once as a top-level string entry in one
/// arb file's raw text. Valid JSON syntactically allows a repeated key;
/// `jsonDecode` just silently keeps whichever occurrence parses last, which
/// hides the duplicate entirely — this exists so a caller can warn about it
/// instead.
class DuplicateArbKey {
  const DuplicateArbKey({required this.key, required this.values});

  final String key;

  /// Every value found for [key], in file order (at least 2).
  final List<String> values;

  /// True when every occurrence has the identical value — still worth
  /// cleaning up, but not silently dropping information the way a
  /// conflicting duplicate does.
  bool get sameValue => values.toSet().length == 1;
}

/// Walks [raw] character-by-character (not line-by-line, and not via
/// `jsonDecode`) to find every top-level `"key": "value"` string pair,
/// *including* a key that appears more than once — `jsonDecode` collapses
/// that to its last occurrence, which is exactly the case worth surfacing
/// as a warning (see [findDuplicateArbKeys]).
///
/// Character-by-character, rather than a per-line regex, specifically so a
/// value containing a literal `{`/`}` (an ICU placeholder like `{count}`)
/// never throws off nesting-depth tracking — only entries at depth 1 (the
/// file's own top level) are recorded; a `@key` metadata block's own
/// nested entries (e.g. `"description"`) are deliberately not, since a
/// `description` repeating across different `@key` blocks isn't a
/// duplicate key at all.
List<RawArbEntry> scanRawStringEntries(String raw) {
  final entries = <RawArbEntry>[];
  var i = 0;
  var depth = 0;

  String readJsonString() {
    final start = i;
    i++; // opening quote
    while (i < raw.length && raw[i] != '"') {
      i += raw[i] == '\\' ? 2 : 1;
    }
    // An unterminated string (malformed/truncated input) would otherwise
    // walk `i` past `raw.length` here and make the `substring` below throw
    // a bare RangeError. The one real caller already runs `jsonDecode`
    // first, which rejects malformed JSON before this ever sees it, but
    // this is a public, exported utility — a future caller operating on
    // unvalidated text deserves a clear error, not one.
    if (i >= raw.length) {
      throw FormatException(
        'Unterminated string starting at $start',
        raw,
        start,
      );
    }
    i++; // closing quote
    return jsonDecode(raw.substring(start, i)) as String;
  }

  while (i < raw.length) {
    final c = raw[i];
    if (c == '{') {
      depth++;
      i++;
    } else if (c == '}') {
      depth--;
      i++;
    } else if (c == '"') {
      final key = readJsonString();
      var j = i;
      while (j < raw.length &&
          raw[j] != ':' &&
          '{}"'.contains(raw[j]) == false) {
        j++;
      }
      if (j < raw.length && raw[j] == ':') {
        i = j + 1;
        while (i < raw.length && raw[i].trim().isEmpty) {
          i++;
        }
        if (depth == 1 && i < raw.length && raw[i] == '"') {
          entries.add(RawArbEntry(key, readJsonString()));
          continue;
        }
      }
      // Not a depth-1 string entry (a `@key` object's value, or a stray
      // string this scan doesn't need) — resume scanning from wherever `i`
      // already sits; the `{`/`}` branches above pick up its nesting.
    } else {
      i++;
    }
  }
  return entries;
}

/// Every key in [raw] that has more than one top-level occurrence, each
/// with the values found for it.
List<DuplicateArbKey> findDuplicateArbKeys(String raw) {
  final byKey = <String, List<String>>{};
  for (final entry in scanRawStringEntries(raw)) {
    byKey.putIfAbsent(entry.key, () => []).add(entry.value);
  }
  return [
    for (final entry in byKey.entries)
      if (entry.value.length > 1)
        DuplicateArbKey(key: entry.key, values: entry.value),
  ];
}
