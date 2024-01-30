// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ble_client_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BleClientDtoImpl _$$BleClientDtoImplFromJson(Map<String, dynamic> json) =>
    _$BleClientDtoImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
      user: BleUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BleClientDtoImplToJson(_$BleClientDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'user': instance.user.toJson(),
    };
