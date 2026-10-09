/// The one thing a client has to provide to call an action: send [name] with
/// [params] and hand back the decoded JSON object.
///
/// The dashboard and `nexsoft_server_mcp` each implement it over their own HTTP
/// client (and decide for themselves what a failure looks like); everything
/// typed — params in, results out — lives in `NexsoftActions` on top of it.
abstract interface class ActionTransport {
  Future<Map<String, dynamic>> invokeAction(
    String name,
    Map<String, Object?> params,
  );
}
