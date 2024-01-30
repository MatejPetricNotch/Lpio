import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lpio/services/network/api_service.dart';

class HomeRepository {
  final ApiService apiService;
  HomeRepository({
    required this.apiService,
  });

  Future<int> getTotalRegisteredBeaconsCount() async {
    return await apiService.request(
      endpoint: 'beacons/count',
      httpMethod: HttpMethod.get,
      onSuccess: (responseData) async {
        int count = responseData;
        return count;
      },
      onError: (error) {
        return null;
      },
    );
  }

  Future<int> getTotalRegisteredBleGatewaysCount() async {
    return await apiService.request(
      endpoint: 'ble-gateways/count',
      httpMethod: HttpMethod.get,
      onSuccess: (responseData) async {
        int count = responseData;
        return count;
      },
      onError: (error) {
        return null;
      },
    );
  }

  Future<int> getBleGwModelsCount() async {
    return await apiService.request(
      endpoint: 'ble-gw-models/count',
      httpMethod: HttpMethod.get,
      onSuccess: (responseData) async {
        int count = responseData;
        return count;
      },
      onError: (error) {
        return null;
      },
    );
  }

  Future<int> getTotalLocationsCount() async {
    return await apiService.request(
      endpoint: 'locations/count',
      httpMethod: HttpMethod.get,
      onSuccess: (responseData) async {
        int count = responseData;
        return count;
      },
      onError: (error) {
        return null;
      },
    );
  }

  Future<int> getTotalZonesCount() async {
    return await apiService.request(
      endpoint: 'zones/count',
      httpMethod: HttpMethod.get,
      onSuccess: (responseData) async {
        int count = responseData;
        return count;
      },
      onError: (error) {
        return null;
      },
    );
  }

  Future<int> getTotalBleClientsCount() async {
    return await apiService.request(
      endpoint: 'ble-clients/count',
      httpMethod: HttpMethod.get,
      onSuccess: (responseData) async {
        int count = responseData;
        return count;
      },
      onError: (error) {
        return null;
      },
    );
  }
}

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return HomeRepository(apiService: apiService);
});

class HomeGridItemData {
  final String label;
  final String icon;
  final int count;
  final Color color;
  HomeGridItemData({
    required this.label,
    required this.icon,
    required this.count,
    required this.color,
  });
}
