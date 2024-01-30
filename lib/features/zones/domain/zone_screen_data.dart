// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lpio/features/account/domain/account.dart';
import 'package:lpio/features/beacons/domain/ble_client.dart';
import 'package:lpio/features/zones/domain/zone_data.dart';
part 'zone_screen_data.freezed.dart';
part 'zone_screen_data.g.dart';

@Freezed()
class ZoneScreenData with _$ZoneScreenData {
  @JsonSerializable(explicitToJson: true)
  const factory ZoneScreenData({
    required Account account,
    required List<BleClient> bleClients,
    required BleClient selectedBleClient,
    List<ZoneData>? zonesData,
  }) = _ZoneScreenData;

  factory ZoneScreenData.fromJson(Map<String, dynamic> json) =>
      _$ZoneScreenDataFromJson(json);
}
