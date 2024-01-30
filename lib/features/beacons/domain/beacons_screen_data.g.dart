// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beacons_screen_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeaconsScreenDataImpl _$$BeaconsScreenDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BeaconsScreenDataImpl(
      sendingIntervalForeground: json['sendingIntervalForeground'] as int,
      sendingIntervalBackground: json['sendingIntervalBackground'] as int,
      selectedBleClient: json['selectedBleClient'] == null
          ? null
          : BleClient.fromJson(
              json['selectedBleClient'] as Map<String, dynamic>),
      bleClients: (json['bleClients'] as List<dynamic>?)
          ?.map((e) => BleClient.fromJson(e as Map<String, dynamic>))
          .toList(),
      uuidSelected: json['uuidSelected'] as String?,
      majorSelected: json['majorSelected'] as String?,
      sendingStarted: json['sendingStarted'] as bool,
    );

Map<String, dynamic> _$$BeaconsScreenDataImplToJson(
        _$BeaconsScreenDataImpl instance) =>
    <String, dynamic>{
      'sendingIntervalForeground': instance.sendingIntervalForeground,
      'sendingIntervalBackground': instance.sendingIntervalBackground,
      'selectedBleClient': instance.selectedBleClient?.toJson(),
      'bleClients': instance.bleClients?.map((e) => e.toJson()).toList(),
      'uuidSelected': instance.uuidSelected,
      'majorSelected': instance.majorSelected,
      'sendingStarted': instance.sendingStarted,
    };
