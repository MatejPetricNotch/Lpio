import 'dart:io';

import 'package:beacons_plugin/beacons_plugin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:lpio/features/login/data/login_repository.dart';
import 'package:lpio/features/login/domain/authenticate_user_dto.dart';

final loginLoadingProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

class AsyncLoginScreenNotifier extends AsyncNotifier<bool> {
  @override
  Future<bool> build() async {
    if (Platform.isAndroid) {
      await BeaconsPlugin.setDisclosureDialogMessage(
          title: "Location Permission Required",
          message: "App collects location data for beacon functionality.");
    }
    return _checkIfIsLoggedIn();
  }

  Future<bool> _checkIfIsLoggedIn() async {
    String? token = ref.read(loginRepositoryProvider).getToken();
    if (token != null && !JwtDecoder.isExpired(token)) {
      return true;
    }
    return false;
  }

  Future<String?> loginAndSaveToken(
      {required AuthenticateUserDto authenticateUserDto}) async {
    ref.read(loginLoadingProvider.notifier).update((state) => true);

    String? token = await ref.read(loginRepositoryProvider).generateToken(
          authenticateUserDto: authenticateUserDto,
        );

    if (token != null) {
      await ref.read(loginRepositoryProvider).saveToken(token: token);
    }

    ref.read(loginLoadingProvider.notifier).update((state) => false);

    return token;
  }
}

final asyncLoginScreenControllerProvider =
    AsyncNotifierProvider<AsyncLoginScreenNotifier, bool>(() {
  return AsyncLoginScreenNotifier();
});
