// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'p2p.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$P2pPeerImpl _$$P2pPeerImplFromJson(Map<String, dynamic> json) =>
    _$P2pPeerImpl(
      id: json['id'] as String,
      displayName: json['display_name'] as String,
      connectedAt: DateTime.parse(json['connected_at'] as String),
    );

Map<String, dynamic> _$$P2pPeerImplToJson(_$P2pPeerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'connected_at': instance.connectedAt.toIso8601String(),
    };

_$P2pSignalImpl _$$P2pSignalImplFromJson(Map<String, dynamic> json) =>
    _$P2pSignalImpl(
      from: json['from'] as String,
      type: json['type'] as String,
      payload: json['payload'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$P2pSignalImplToJson(_$P2pSignalImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'type': instance.type,
      'payload': instance.payload,
    };
