import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lpio/services/storage/hive_storage_service.dart';

enum HttpMethod { get, post, put, patch, delete }

class ApiService {
  final HiveStorageService hiveStorageService;
  ApiService({required this.hiveStorageService});
  Dio dio = Dio(BaseOptions(
    receiveDataWhenStatusError: true,
    validateStatus: (status) => status! < 400,
    baseUrl: 'https://workshop.ag04.io/lpio-console/api/',
    connectTimeout: const Duration(milliseconds: 5000),
  ));
  // ..interceptors.add(CustomInterceptor(bearerToken: envConfig.bearer));

  Future request({
    required String endpoint,
    required HttpMethod httpMethod,
    required Function(dynamic responseData) onSuccess,
    Function(String error)? onError,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    Options? options,
  }) async {
    try {
      String? token = hiveStorageService.getValue<String>(
        boxName: HiveBoxesEnum.token.name,
        key: 'token',
      );
      Response response = await dio.request(
        endpoint,
        queryParameters: queryParameters,
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
          },
          method: httpMethod.name,
        )..headers?[HttpHeaders.authorizationHeader] = 'Bearer $token',
      );
      return onSuccess(response.data);
    } on DioException catch (e) {
      if (onError != null) {
        onError('$e');
      }
    }
    return null;
  }
}

final apiServiceProvider = Provider((ref) {
  HiveStorageService hiveStorageService = ref.read(hiveStorageServiceProvider);
  return ApiService(hiveStorageService: hiveStorageService);
});
