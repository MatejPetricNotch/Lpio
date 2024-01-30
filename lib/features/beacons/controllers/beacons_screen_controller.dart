import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lpio/features/account/data/account_repository.dart';
import 'package:lpio/features/account/domain/account.dart';
import 'package:lpio/features/beacons/data/beacons_repository.dart';
import 'package:lpio/features/beacons/domain/beacon_scanned.dart';
import 'package:lpio/features/beacons/domain/beacons_screen_data.dart';
import 'package:lpio/features/beacons/domain/ble_client.dart';
import 'package:lpio/features/beacons/domain/ble_telemetry_data.dart';
import 'package:lpio/features/beacons/domain/ble_telemetry_dto.dart';

class BeaconsScreenController
    extends AutoDisposeAsyncNotifier<BeaconsScreenData> {
  @override
  Future<BeaconsScreenData> build() async {
    String? uuidDefault = ref.read(uuidProvider);

    Account account =
        await ref.read(accountRepositoryProvider).getAccountData();

    List<BleClient> bleClients =
        await ref.read(beaconsRepositoryProvider).getBleClients();

    BleClient? selectedBleClient = bleClients.firstWhereOrNull(
      (element) => element.user!.id == account.id,
    );

    return BeaconsScreenData(
      sendingIntervalForeground: 30,
      sendingIntervalBackground: 60,
      selectedBleClient: selectedBleClient,
      bleClients: bleClients,
      majorSelected: null,
      uuidSelected: uuidDefault,
      sendingStarted: false,
    );
  }

  Future<void> updateState({
    int? sendingIntervalForeground,
    int? sendingIntervalBackground,
    BleClient? selectedBleClient,
    List<BleClient>? bleClients,
    String? majorSelected,
    String? uuidSelected,
    bool? sendingStarted,
  }) async {
    BeaconsScreenData previousState = state.value!;

    state = AsyncValue.data(BeaconsScreenData(
      sendingIntervalForeground:
          sendingIntervalForeground ?? previousState.sendingIntervalForeground,
      sendingIntervalBackground:
          sendingIntervalBackground ?? previousState.sendingIntervalBackground,
      selectedBleClient: selectedBleClient ?? previousState.selectedBleClient,
      bleClients: bleClients ?? previousState.bleClients,
      majorSelected: majorSelected ?? previousState.majorSelected,
      uuidSelected: uuidSelected ?? previousState.uuidSelected,
      sendingStarted: sendingStarted ?? previousState.sendingStarted,
    ));
  }

  Future<void> sendBeacons() async {
    List<BeaconScanned>? beaconsScanned = ref.read(beaconsScannedProvider);
    await ref.read(beaconsRepositoryProvider).sendTelemetry(
        bleTelemetryDto: BleTelemetryDto(
          ts: DateTime.now().toUtc().toIso8601String(),
          data: (beaconsScanned ?? [])
              .map((i) => BleTelemetryData(
                    uuid: i.uuid,
                    majNum: int.parse(i.major),
                    minNum: int.parse(i.minor),
                    tx: int.parse((i.txPower ?? '0')),
                    rssi: int.parse((i.rssi ?? '0')),
                  ))
              .toList(),
        ),
        clientId: state.value!.selectedBleClient!.id);
  }
}

final beaconsScreenControllerProvider = AsyncNotifierProvider.autoDispose<
    BeaconsScreenController, BeaconsScreenData>(() {
  return BeaconsScreenController();
});

final beaconsScannedProvider = StateProvider<List<BeaconScanned>>((ref) {
  return [];
});
