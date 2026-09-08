/// An action parameter's declared type, as shown in `GET /api/v1/actions`'s
/// schema — descriptive metadata for a REST client or the dashboard's
/// generated form, not a validator (each side's own `parseJson` is that).
enum ParamType {
  string,
  integer,
  number,
  boolean,
  enumeration;

  String toWire() => name;

  static ParamType fromWire(String value) =>
      ParamType.values.firstWhere((type) => type.name == value);
}
