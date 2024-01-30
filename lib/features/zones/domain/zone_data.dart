// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lpio/features/beacons/domain/ble_client.dart';
import 'package:lpio/features/zones/domain/monthly_count.dart';
import 'package:lpio/features/zones/domain/zone_beacon.dart';
part 'zone_data.freezed.dart';
part 'zone_data.g.dart';

@Freezed()
class ZoneData with _$ZoneData {
  @JsonSerializable(explicitToJson: true)
  const factory ZoneData({
    required int id,
    required String firstTimeSeen,
    required String lastTimeSeen,
    required Zone zone,
    required BleClient bleClient,
  }) = _ZoneData;

  factory ZoneData.fromJson(Map<String, dynamic> json) =>
      _$ZoneDataFromJson(json);
}
