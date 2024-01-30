// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lpio/features/beacons/domain/ble_user.dart';

part 'ble_client.freezed.dart';
part 'ble_client.g.dart';

@Freezed()
class BleClient with _$BleClient {
  @JsonSerializable(explicitToJson: true)
  const factory BleClient({
    required int id,
    required String name,
    String? description,
    BleUser? user,
  }) = _BleClient;

  factory BleClient.fromJson(Map<String, dynamic> json) =>
      _$BleClientFromJson(json);
}
