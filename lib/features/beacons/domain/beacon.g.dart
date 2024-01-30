// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beacon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeaconImpl _$$BeaconImplFromJson(Map<String, dynamic> json) => _$BeaconImpl(
      name: json['name'] as String,
      uuid: json['uuid'] as String,
      major: json['major'] as String,
      minor: json['minor'] as String,
      rssi: json['rssi'] as String,
      distance: json['distance'] as String,
      proximity: json['proximity'] as String,
    );

Map<String, dynamic> _$$BeaconImplToJson(_$BeaconImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
      'major': instance.major,
      'minor': instance.minor,
      'rssi': instance.rssi,
      'distance': instance.distance,
      'proximity': instance.proximity,
    };
