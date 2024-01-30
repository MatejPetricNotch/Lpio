// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ble_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BleClientImpl _$$BleClientImplFromJson(Map<String, dynamic> json) =>
    _$BleClientImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      user: json['user'] == null
          ? null
          : BleUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BleClientImplToJson(_$BleClientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'user': instance.user?.toJson(),
    };
