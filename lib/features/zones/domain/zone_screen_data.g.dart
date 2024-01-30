// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zone_screen_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZoneScreenDataImpl _$$ZoneScreenDataImplFromJson(Map<String, dynamic> json) =>
    _$ZoneScreenDataImpl(
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      bleClients: (json['bleClients'] as List<dynamic>)
          .map((e) => BleClient.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedBleClient:
          BleClient.fromJson(json['selectedBleClient'] as Map<String, dynamic>),
      zonesData: (json['zonesData'] as List<dynamic>?)
          ?.map((e) => ZoneData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ZoneScreenDataImplToJson(
        _$ZoneScreenDataImpl instance) =>
    <String, dynamic>{
      'account': instance.account.toJson(),
      'bleClients': instance.bleClients.map((e) => e.toJson()).toList(),
      'selectedBleClient': instance.selectedBleClient.toJson(),
      'zonesData': instance.zonesData?.map((e) => e.toJson()).toList(),
    };
