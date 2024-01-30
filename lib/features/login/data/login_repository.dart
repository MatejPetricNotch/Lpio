import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lpio/features/login/domain/authenticate_user_dto.dart';
import 'package:lpio/features/login/domain/login_response.dart';
import 'package:lpio/services/network/api_service.dart';
import 'package:lpio/services/storage/hive_storage_service.dart';

class LoginRepository {
  ApiService apiService;
  HiveStorageService hiveStorageService;

  LoginRepository({
    required this.apiService,
    required this.hiveStorageService,
  });

  Future<String?> generateToken(
      {required AuthenticateUserDto authenticateUserDto}) async {
    return await apiService.request(
      endpoint: 'authenticate',
      httpMethod: HttpMethod.post,
      data: authenticateUserDto.toJson(),
      onSuccess: (responseData) async {
        LoginResponse loginResponse = LoginResponse.fromJson(responseData);
        return loginResponse.idToken;
      },
      onError: (error) {
        return null;
      },
    );
  }

  Future<void> saveToken({
    required String token,
  }) async {
    await hiveStorageService.setValue<String>(
      key: 'token',
      data: token,
      boxName: HiveBoxesEnum.token.name,
    );
  }

  String? getToken() {
    try {
      return hiveStorageService.getValue<String>(
        boxName: HiveBoxesEnum.token.name,
        key: 'token',
      ) as String;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }
}

final loginRepositoryProvider = Provider((ref) {
  final apiService = ref.read(apiServiceProvider);
  final hiveStorageService = ref.read(hiveStorageServiceProvider);

  return LoginRepository(
    apiService: apiService,
    hiveStorageService: hiveStorageService,
  );
});
