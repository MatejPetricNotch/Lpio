import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lpio/features/account/domain/account.dart';
import 'package:lpio/services/network/api_service.dart';
import 'package:lpio/services/storage/hive_storage_service.dart';

class AccountRepository {
  final ApiService apiService;
  final HiveStorageService hiveStorageService;
  AccountRepository({
    required this.apiService,
    required this.hiveStorageService,
  });

  Future<Account> getAccountData() async {
    return await apiService.request(
      endpoint: 'account',
      httpMethod: HttpMethod.get,
      onSuccess: (responseData) async {
        return Account.fromJson(responseData);
      },
      onError: (error) {
        return null;
      },
    );
  }

  void removeToken() async {
    try {
      await hiveStorageService.deleteValue<String>(
        boxName: HiveBoxesEnum.token.name,
        key: 'token',
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return;
  }
}

final accountRepositoryProvider = Provider<AccountRepository>((ref) {
  final apiService = ref.read(apiServiceProvider);
  final hiveStorageService = ref.read(hiveStorageServiceProvider);
  return AccountRepository(
    apiService: apiService,
    hiveStorageService: hiveStorageService,
  );
});

final accountDataProvider = Provider.autoDispose<Future<Account>>((ref) async {
  final accountRepository = ref.read(accountRepositoryProvider);
  Account account = await accountRepository.getAccountData();
  return account;
});
