// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'beacon_scanned.freezed.dart';
part 'beacon_scanned.g.dart';

@Freezed()
class BeaconScanned with _$BeaconScanned {
  @JsonSerializable(explicitToJson: true)
  const factory BeaconScanned({
    String? name,
    required String uuid,
    required String major,
    required String minor,
    String? distance,
    String? proximity,
    String? rssi,
    String? txPower,
    String? scanTime,
  }) = _BeaconScanned;

  factory BeaconScanned.fromJson(Map<String, dynamic> json) =>
      _$BeaconScannedFromJson(json);
}
