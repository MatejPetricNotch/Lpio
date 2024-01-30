// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ble_telemetry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BleTelemetryDtoImpl _$$BleTelemetryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$BleTelemetryDtoImpl(
      ts: json['ts'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => BleTelemetryData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BleTelemetryDtoImplToJson(
        _$BleTelemetryDtoImpl instance) =>
    <String, dynamic>{
      'ts': instance.ts,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
