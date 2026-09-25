import 'package:freezed_annotation/freezed_annotation.dart';

part 'p2p.freezed.dart';
part 'p2p.g.dart';

/// One connected peer in the P2P file-share presence list.
///
/// [id] is server-assigned and unguessable — a browser tab only ever learns
/// its own id via the `hello` SSE event, and learns every other peer's id
/// only because the server chose to publish it in [P2pPeer.id] here. That is
/// also what makes it safe for a client to assert its own id as
/// [P2pSignal.from] on `POST /p2p/signal`: only the server ever handed it
/// out, so presenting one back proves the caller is that peer.
@freezed
abstract class P2pPeer with _$P2pPeer {
  const factory P2pPeer({
    required String id,
    required String displayName,
    required DateTime connectedAt,
  }) = _P2pPeer;

  factory P2pPeer.fromJson(Map<String, dynamic> json) =>
      _$P2pPeerFromJson(json);
}

/// One signaling message relayed between two peers over `/p2p/signal` and
/// `/p2p/events` — an SDP offer/answer, an ICE candidate, a "relay ready"
/// notice (the sender's fallback upload finished; [payload] carries the id
/// to download), or a "bye" (the sender gave up, or the peer left).
///
/// The server never inspects [payload] beyond passing it through — WebRTC
/// signaling content is opaque to it by design, same as the P2P bytes
/// themselves never touch it on the happy path.
@freezed
abstract class P2pSignal with _$P2pSignal {
  const factory P2pSignal({
    required String from,
    required String type,
    required Map<String, dynamic> payload,
  }) = _P2pSignal;

  factory P2pSignal.fromJson(Map<String, dynamic> json) =>
      _$P2pSignalFromJson(json);
}
