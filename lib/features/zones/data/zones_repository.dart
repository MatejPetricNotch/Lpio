import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lpio/features/zones/domain/zone_data.dart';
import 'package:lpio/services/network/api_service.dart';

class ZonesRepository {
  final ApiService apiService;
  ZonesRepository({
    required this.apiService,
  });

  Future<List<ZoneData>> getZoneData({
    required int bleClientId,
  }) async {
    return await apiService.request(
      endpoint: 'ble-client-zone-histories?bleClientId.equals=$bleClientId',
      httpMethod: HttpMethod.get,
      onSuccess: (responseData) async {
        List<ZoneData>? data = responseData
            ?.map<ZoneData>((json) => ZoneData.fromJson(json))
            .toList();

        return data;
      },
      onError: (error) {
        return null;
      },
    );
  }
}

final zonesRepositoryProvider = Provider<ZonesRepository>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return ZonesRepository(apiService: apiService);
});
