/// Minimum permission an action/principal needs, lowest to highest.
///
/// `read < invoke < invokeDangerous < admin` — a caller with a higher
/// permission satisfies any check requiring a lower one; enforcement of that
/// ordering lives with each side's own auth code, not here.
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
