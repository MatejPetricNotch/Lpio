import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lpio/app.dart';
import 'package:lpio/services/storage/hive_storage_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Hive.initFlutter();

  final hiveStorageService = HiveStorageService();
  await hiveStorageService.openBox<String>(HiveBoxesEnum.token.name);

  runApp(
    ProviderScope(
      overrides: [
        hiveStorageServiceProvider.overrideWithValue(hiveStorageService),
      ],
      child: const MyApp(),
    ),
  );
}
