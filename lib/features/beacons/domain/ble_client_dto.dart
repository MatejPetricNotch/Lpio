// ignore_for_file: invalid_annotation_target
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lpio/features/beacons/domain/ble_user.dart';
part 'ble_client_dto.freezed.dart';
part 'ble_client_dto.g.dart';

@Freezed()
class BleClientDto with _$BleClientDto {
  @JsonSerializable(explicitToJson: true)
  const factory BleClientDto({
    required String name,
    String? description,
    required BleUser user,
  }) = _BleClientDto;

  factory BleClientDto.fromJson(Map<String, dynamic> json) =>
      _$BleClientDtoFromJson(json);
}
