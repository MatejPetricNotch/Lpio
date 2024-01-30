// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lpio/features/beacons/domain/ble_client.dart';
import 'package:lpio/features/zones/domain/zone_beacon_data.dart';
part 'zone_beacon.freezed.dart';
part 'zone_beacon.g.dart';

@Freezed()
class Zone with _$Zone {
  @JsonSerializable(explicitToJson: true)
  const factory Zone({
    required int id,
    required String name,
    String? comment,
    String? location,
  }) = _Zone;

  factory Zone.fromJson(Map<String, dynamic> json) => _$ZoneFromJson(json);
}
