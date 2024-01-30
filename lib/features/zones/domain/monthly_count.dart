// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lpio/features/zones/controllers/zones_screen_controller.dart';
import 'package:lpio/features/zones/domain/zone_beacon.dart';
part 'monthly_count.freezed.dart';
part 'monthly_count.g.dart';

@Freezed()
class MonthlyCount with _$MonthlyCount {
  @JsonSerializable(explicitToJson: true)
  const factory MonthlyCount({
    required String month,
    required int count,
  }) = _MonthlyCount;

  factory MonthlyCount.fromJson(Map<String, dynamic> json) =>
      _$MonthlyCountFromJson(json);
}
