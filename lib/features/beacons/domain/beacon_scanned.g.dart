// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beacon_scanned.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeaconScannedImpl _$$BeaconScannedImplFromJson(Map<String, dynamic> json) =>
    _$BeaconScannedImpl(
      name: json['name'] as String?,
      uuid: json['uuid'] as String,
      major: json['major'] as String,
      minor: json['minor'] as String,
      distance: json['distance'] as String?,
      proximity: json['proximity'] as String?,
      rssi: json['rssi'] as String?,
      txPower: json['txPower'] as String?,
      scanTime: json['scanTime'] as String?,
    );

Map<String, dynamic> _$$BeaconScannedImplToJson(_$BeaconScannedImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
      'major': instance.major,
      'minor': instance.minor,
      'distance': instance.distance,
      'proximity': instance.proximity,
      'rssi': instance.rssi,
      'txPower': instance.txPower,
      'scanTime': instance.scanTime,
    };
