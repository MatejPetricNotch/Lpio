// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'beacon.freezed.dart';
part 'beacon.g.dart';

@Freezed()
class Beacon with _$Beacon {
  @JsonSerializable(explicitToJson: true)
  const factory Beacon({
    required String name,
    required String uuid,
    required String major,
    required String minor,
    required String rssi,
    required String distance,
    required String proximity,
  }) = _Beacon;

  factory Beacon.fromJson(Map<String, dynamic> json) => _$BeaconFromJson(json);
}
