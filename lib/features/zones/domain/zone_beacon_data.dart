// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lpio/features/beacons/domain/ble_client.dart';
part 'zone_beacon_data.freezed.dart';
part 'zone_beacon_data.g.dart';

@Freezed()
class ZoneBeaconData with _$ZoneBeaconData {
  @JsonSerializable(explicitToJson: true)
  const factory ZoneBeaconData({
    required int id,
    String? uuid,
    String? bleName,
    String? mac,
    int? majorNumber,
    int? minorNumber,
    String? comment,
    String? createdBy,
    String? createdDate,
    String? lastModifiedBy,
    String? lastModifiedDate,
  }) = _ZoneBeaconData;

  factory ZoneBeaconData.fromJson(Map<String, dynamic> json) =>
      _$ZoneBeaconDataFromJson(json);
}
