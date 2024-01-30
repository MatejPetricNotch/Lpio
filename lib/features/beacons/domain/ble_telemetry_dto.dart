// ignore_for_file: invalid_annotation_target
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lpio/features/beacons/domain/ble_telemetry_data.dart';
part 'ble_telemetry_dto.freezed.dart';
part 'ble_telemetry_dto.g.dart';

@Freezed()
class BleTelemetryDto with _$BleTelemetryDto {
  @JsonSerializable(explicitToJson: true)
  const factory BleTelemetryDto({
    required String ts,
    required List<BleTelemetryData> data,
  }) = _BleTelemetryDto;

  factory BleTelemetryDto.fromJson(Map<String, dynamic> json) =>
      _$BleTelemetryDtoFromJson(json);
}
