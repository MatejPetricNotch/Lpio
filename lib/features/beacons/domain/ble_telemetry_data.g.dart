// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ble_telemetry_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BleTelemetryDataImpl _$$BleTelemetryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BleTelemetryDataImpl(
      uuid: json['uuid'] as String,
      majNum: json['majNum'] as int,
      minNum: json['minNum'] as int,
      tx: json['tx'] as int,
      rssi: json['rssi'] as int,
    );

Map<String, dynamic> _$$BleTelemetryDataImplToJson(
        _$BleTelemetryDataImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'majNum': instance.majNum,
      'minNum': instance.minNum,
      'tx': instance.tx,
      'rssi': instance.rssi,
    };
