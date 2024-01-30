import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lpio/features/account/data/account_repository.dart';
import 'package:lpio/features/account/domain/account.dart';
import 'package:lpio/features/beacons/data/beacons_repository.dart';
import 'package:lpio/features/beacons/domain/ble_client.dart';
import 'package:lpio/features/zones/data/zones_repository.dart';
import 'package:lpio/features/zones/domain/zone_data.dart';
import 'package:lpio/features/zones/domain/zone_screen_data.dart';

class ZonesScreenController extends AutoDisposeAsyncNotifier<ZoneScreenData> {
  @override
  Future<ZoneScreenData> build() async {
    Account account =
        await ref.read(accountRepositoryProvider).getAccountData();

    List<BleClient> bleClients =
        await ref.read(beaconsRepositoryProvider).getBleClients();

    BleClient selectedBleClient = bleClients
            .firstWhereOrNull((element) => element.user!.id == account.id) ??
        bleClients.first;

    List<ZoneData> zonesData = await ref
        .read(zonesRepositoryProvider)
        .getZoneData(bleClientId: selectedBleClient.id);

    return ZoneScreenData(
      zonesData: zonesData,
      account: account,
      bleClients: bleClients,
      selectedBleClient: selectedBleClient,
    );
  }

  Future<void> updateState(BleClient bleClient) async {
    state = const AsyncValue.loading();

    List<ZoneData> newZonesData = await ref
        .read(zonesRepositoryProvider)
        .getZoneData(bleClientId: bleClient.id);
    state = AsyncValue.data(ZoneScreenData(
      zonesData: newZonesData,
      account: state.value!.account,
      bleClients: state.value!.bleClients,
      selectedBleClient: bleClient,
    ));
  }
}

final zonesScreenControllerProvider =
    AsyncNotifierProvider.autoDispose<ZonesScreenController, ZoneScreenData>(
        () {
  return ZonesScreenController();
});
