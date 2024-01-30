// ignore_for_file: invalid_annotation_target
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lpio/features/beacons/domain/ble_user.dart';
part 'ble_telemetry_data.freezed.dart';
part 'ble_telemetry_data.g.dart';

@Freezed()
class BleTelemetryData with _$BleTelemetryData {
  @JsonSerializable(explicitToJson: true)
  const factory BleTelemetryData({
    required String uuid,
    required int majNum,
    required int minNum,
    required int tx,
    required int rssi,
  }) = _BleTelemetryData;

  factory BleTelemetryData.fromJson(Map<String, dynamic> json) =>
      _$BleTelemetryDataFromJson(json);
}
