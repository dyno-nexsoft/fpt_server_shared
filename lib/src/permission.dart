/// Minimum permission an action needs, and what a principal may hold.
///
/// Not a strict hierarchy: a principal's permission set is flat membership
/// (e.g. a non-owner Discord user gets exactly `{read, invoke}`, never
/// `invokeDangerous` just because they hold `invoke`) — `admin` is the only
/// value that acts as a universal override, and that special-casing lives in
/// each side's own auth code (`Principal.can`), not here.
enum Permission {
  read,
  invoke,
  invokeDangerous,
  admin;

  /// The wire value — snake_case, unlike the enum's own Dart-convention
  /// camelCase name. Serializing via bare `.name` (as the server did before
  /// this package existed) put a literal `invokeDangerous` on the wire, a
  /// real violation of the project's snake_case-everywhere rule that this
  /// explicit mapping fixes rather than preserves.
  String toWire() => switch (this) {
    Permission.read => 'read',
    Permission.invoke => 'invoke',
    Permission.invokeDangerous => 'invoke_dangerous',
    Permission.admin => 'admin',
  };

  static Permission fromWire(String value) => switch (value) {
    'read' => Permission.read,
    'invoke' => Permission.invoke,
    'invoke_dangerous' => Permission.invokeDangerous,
    'admin' => Permission.admin,
    _ => throw ArgumentError.value(value, 'value', 'Unknown permission'),
  };
}
