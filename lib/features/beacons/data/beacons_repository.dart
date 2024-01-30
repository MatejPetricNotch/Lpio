import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lpio/features/beacons/domain/beacon_details.dart';
import 'package:lpio/features/beacons/domain/ble_client.dart';
import 'package:lpio/features/beacons/domain/ble_client_dto.dart';
import 'package:lpio/features/beacons/domain/ble_telemetry_dto.dart';
import 'package:lpio/services/network/api_service.dart';

class BeaconsRepository {
  final ApiService apiService;
  BeaconsRepository({
    required this.apiService,
  });

  Future<BeaconDetails?> getBeaconDetails({required String uuid}) async {
    return await apiService.request(
      endpoint: 'beacons?uuid.equals=${uuid.toUpperCase()}',
      httpMethod: HttpMethod.get,
      onSuccess: (responseData) async {
        if (responseData.length == 0) {
          return null;
        }
        BeaconDetails beaconDetails =
            BeaconDetails.fromJson(responseData.first);
        return beaconDetails;
      },
      onError: (error) {
        return null;
      },
    );
  }

  Future<List<BleClient>> getBleClients() async {
    return await apiService.request(
      endpoint: 'ble-clients',
      httpMethod: HttpMethod.get,
      onSuccess: (responseData) {
        List<BleClient>? bleClients = responseData
            ?.map<BleClient>((json) => BleClient.fromJson(json))
            .toList();
        return bleClients;
      },
      onError: (error) {
        return [];
      },
    );
  }

  Future<BleClient>? createNewBleClient(BleClientDto bleClientDto) async {
    return await apiService.request(
      endpoint: 'ble-clients',
      httpMethod: HttpMethod.post,
      data: bleClientDto.toJson(),
      onSuccess: (responseData) {
        return BleClient.fromJson(responseData);
      },
      onError: (error) {
        return null;
      },
    );
  }

  Future<void> sendTelemetry(
      {required BleTelemetryDto bleTelemetryDto, required int clientId}) async {
    return await apiService.request(
      endpoint: 'client/$clientId/telemetery',
      httpMethod: HttpMethod.post,
      data: bleTelemetryDto.toJson(),
      onSuccess: (responseData) {},
      onError: (error) {
        print(error);
        return null;
      },
    );
  }
}

final beaconsRepositoryProvider = Provider<BeaconsRepository>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return BeaconsRepository(apiService: apiService);
});

final beaconDetailsProvider = FutureProvider.autoDispose
    .family<BeaconDetails?, String>((ref, String uuid) async {
  BeaconsRepository beaconsRepository = ref.read(beaconsRepositoryProvider);
  return await beaconsRepository.getBeaconDetails(uuid: uuid);
});

final bleClientProvider = StateProvider<BleClient?>((ref) => null);
final uuidProvider = StateProvider<String?>(
  (ref) => 'b35e9cda-6059-4bd9-ad0a-0ce62714d21f',
);
