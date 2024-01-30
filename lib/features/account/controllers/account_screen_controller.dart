import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lpio/features/account/data/account_repository.dart';
import 'package:lpio/features/account/domain/account.dart';

class AccountScreenController extends AsyncNotifier<Account> {
  @override
  Future<Account> build() async {
    return _loadData();
  }

  Future<Account> _loadData() async {
    return await ref.read(accountRepositoryProvider).getAccountData();
  }

  Future<bool> signOut() async {
    ref.read(signOutLoadingProvider.notifier).update((state) => true);
    try {
      ref.read(accountRepositoryProvider).removeToken();
      await Future.delayed(const Duration(seconds: 1));
      ref.read(signOutLoadingProvider.notifier).update((state) => false);

      return true;
    } catch (e) {
      ref.read(signOutLoadingProvider.notifier).update((state) => false);
      return false;
    }
  }
}

final accountScreenControllerProvider =
    AsyncNotifierProvider<AccountScreenController, Account>(() {
  return AccountScreenController();
});

final signOutLoadingProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});
