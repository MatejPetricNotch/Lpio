// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ble_user.freezed.dart';
part 'ble_user.g.dart';

@Freezed()
class BleUser with _$BleUser {
  @JsonSerializable(explicitToJson: true)
  const factory BleUser({
    required int id,
    required String login,
  }) = _BleUser;

  factory BleUser.fromJson(Map<String, dynamic> json) =>
      _$BleUserFromJson(json);
}
