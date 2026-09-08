/// tbchat modules with their own `l10n/` folder under
/// `lib/app/global/languages/modules/`, named to match `ci.build`'s existing
/// module vocabulary (`cloud_storage`, `socialfi` — see `ci_actions.dart`'s
/// `BuildParams`) rather than the on-disk folder names, which differ for
/// those two (`cloud`, `social_fi`) — [folderName] maps back to the real
/// path. `main` and `miner` have no `ci.build` equivalent (they are not
/// separate checked-out repos), so they use the folder name directly.
enum TbchatModule {
  im,
  wallet,
  cloudStorage,
  // Deliberately all-lowercase, not `socialFi` — this is the literal wire
  // value `toWire()` returns for it (the default `_ => name` branch), so
  // renaming it for casing consistency with `cloudStorage` would silently
  // change the wire value and break every existing caller that already
  // sends `socialfi` (ci.build's own module list included).
  socialfi,
  main,
  miner;

  /// The name every other caller of this module already uses — matches
  /// `ci.build`'s param names exactly, so `cloud_storage`/`socialfi` stay
  /// one consistent vocabulary across both actions instead of introducing a
  /// second spelling just for this one.
  String toWire() => switch (this) {
    TbchatModule.cloudStorage => 'cloud_storage',
    _ => name,
  };

  /// Throws [ArgumentError] (not a bare `StateError`) naming the bad value,
  /// for whichever caller ends up needing this — currently none do; every
  /// real lookup in this codebase uses `.where(...).firstOrNull` instead so
  /// it can render its own "unknown module" message.
  static TbchatModule fromWire(String value) => TbchatModule.values.firstWhere(
    (m) => m.toWire() == value,
    orElse: () => throw ArgumentError.value(
      value,
      'value',
      'Not a known TbchatModule wire value',
    ),
  );

  /// Actual folder name under `lib/app/global/languages/modules/` — differs
  /// from [toWire] only for `cloudStorage` (`cloud` on disk) and `socialfi`
  /// (`social_fi` on disk).
  String get folderName => switch (this) {
    TbchatModule.cloudStorage => 'cloud',
    TbchatModule.socialfi => 'social_fi',
    _ => name,
  };
}
