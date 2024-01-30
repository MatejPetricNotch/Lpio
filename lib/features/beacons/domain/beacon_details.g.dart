// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beacon_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeaconDetailsImpl _$$BeaconDetailsImplFromJson(Map<String, dynamic> json) =>
    _$BeaconDetailsImpl(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      bleName: json['bleName'] as String,
      mac: json['mac'] as String?,
      majorNumber: json['majorNumber'] as int,
      minorNumber: json['minorNumber'] as int,
      comment: json['comment'] as String?,
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] as String,
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] as String?,
    );

Map<String, dynamic> _$$BeaconDetailsImplToJson(_$BeaconDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'bleName': instance.bleName,
      'mac': instance.mac,
      'majorNumber': instance.majorNumber,
      'minorNumber': instance.minorNumber,
      'comment': instance.comment,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDate': instance.lastModifiedDate,
    };
