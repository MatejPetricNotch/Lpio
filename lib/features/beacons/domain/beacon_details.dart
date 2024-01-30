// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'beacon_details.freezed.dart';
part 'beacon_details.g.dart';

@Freezed()
class BeaconDetails with _$BeaconDetails {
  @JsonSerializable(explicitToJson: true)
  const factory BeaconDetails({
    required int id,
    required String uuid,
    required String bleName,
    String? mac,
    required int majorNumber,
    required int minorNumber,
    String? comment,
    String? createdBy,
    required String createdDate,
    String? lastModifiedBy,
    String? lastModifiedDate,
  }) = _BeaconDetails;

  factory BeaconDetails.fromJson(Map<String, dynamic> json) =>
      _$BeaconDetailsFromJson(json);
}
