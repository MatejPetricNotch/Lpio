// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zone_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZoneDataImpl _$$ZoneDataImplFromJson(Map<String, dynamic> json) =>
    _$ZoneDataImpl(
      id: json['id'] as int,
      firstTimeSeen: json['firstTimeSeen'] as String,
      lastTimeSeen: json['lastTimeSeen'] as String,
      zone: Zone.fromJson(json['zone'] as Map<String, dynamic>),
      bleClient: BleClient.fromJson(json['bleClient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ZoneDataImplToJson(_$ZoneDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstTimeSeen': instance.firstTimeSeen,
      'lastTimeSeen': instance.lastTimeSeen,
      'zone': instance.zone.toJson(),
      'bleClient': instance.bleClient.toJson(),
    };
