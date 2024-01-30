// ignore_for_file: invalid_annotation_target
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lpio/features/beacons/domain/ble_client.dart';
part 'beacons_screen_data.freezed.dart';
part 'beacons_screen_data.g.dart';

@Freezed()
class BeaconsScreenData with _$BeaconsScreenData {
  @JsonSerializable(explicitToJson: true)
  const factory BeaconsScreenData({
    required int sendingIntervalForeground,
    required int sendingIntervalBackground,
    BleClient? selectedBleClient,
    List<BleClient>? bleClients,
    String? uuidSelected,
    String? majorSelected,
    required bool sendingStarted,
  }) = _BeaconsScreenData;

  factory BeaconsScreenData.fromJson(Map<String, dynamic> json) =>
      _$BeaconsScreenDataFromJson(json);
}






// final sendingIntervalProvider = StateProvider((ref) => 30);
// final sendingBackgroundIntervalProvider = StateProvider((ref) => 60);
// final bleClientProvider = StateProvider<BleClient?>((ref) => null);
// final uuidProvider = StateProvider<String?>(
//   (ref) => Platform.isIOS ? 'b35e9cda-6059-4bd9-ad0a-0ce62714d21f' : null,
// );
// final majorProvider = StateProvider<int?>((ref) => null);