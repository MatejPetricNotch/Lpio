import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lpio/features/home/data/home_repository.dart';
import 'package:lpio/theme/my_assets.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

class HomeScreenController
    extends AutoDisposeAsyncNotifier<List<HomeGridItemData>> {
  @override
  Future<List<HomeGridItemData>> build() async {
    return _loadData();
  }

  Future<List<HomeGridItemData>> _loadData() async {
    int totalRegisteredBeaconsCount =
        await ref.read(homeRepositoryProvider).getTotalRegisteredBeaconsCount();

    int totalRegisteredBleGatewaysCount = await ref
        .read(homeRepositoryProvider)
        .getTotalRegisteredBleGatewaysCount();

    int totalRegisteredBleGatewaysModelsCount =
        await ref.read(homeRepositoryProvider).getBleGwModelsCount();

    int totalLocationsCounts =
        await ref.read(homeRepositoryProvider).getTotalLocationsCount();

    int totalZonesCount =
        await ref.read(homeRepositoryProvider).getTotalZonesCount();

    int totalRegisteredClients =
        await ref.read(homeRepositoryProvider).getTotalBleClientsCount();

    return [
      HomeGridItemData(
        label: 'Total registered Beacons',
        icon: MyAssets.icons.beaconsRegistered,
        count: totalRegisteredBeaconsCount,
        color: myColorsPalette.grayDark,
      ),
      HomeGridItemData(
        label: 'Total registered Ble Gateways',
        icon: MyAssets.icons.beaconsRegistered,
        count: totalRegisteredBleGatewaysCount,
        color: myColorsPalette.grayLight,
      ),
      HomeGridItemData(
        label: 'Total registered Ble Gateway Models',
        icon: MyAssets.icons.bleGatewayModels,
        count: totalRegisteredBleGatewaysModelsCount,
        color: myColorsPalette.grayExtraLight,
      ),
      HomeGridItemData(
        label: 'Total Locations',
        icon: MyAssets.icons.locations,
        count: totalLocationsCounts,
        color: myColorsPalette.green,
      ),
      HomeGridItemData(
        label: 'Total Zones',
        icon: MyAssets.icons.zones,
        count: totalZonesCount,
        color: myColorsPalette.orange,
      ),
      HomeGridItemData(
        label: 'Total registered Clients',
        icon: MyAssets.icons.clients,
        count: totalRegisteredClients,
        color: myColorsPalette.red,
      ),
    ];
  }
}

final homeScreenControllerProvider = AsyncNotifierProvider.autoDispose<
    HomeScreenController, List<HomeGridItemData>>(() {
  return HomeScreenController();
});
