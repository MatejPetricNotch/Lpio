import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lpio/routing/go_router.dart';
import 'package:lpio/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (_, __) => Consumer(builder: (context, ref, child) {
              final goRouter = ref.watch(goRouterProvider);
              return MaterialApp.router(
                restorationScopeId: 'app',
                debugShowCheckedModeBanner: false,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: const [Locale('en', '')],
                onGenerateTitle: (BuildContext context) => 'Lpio',
                theme: myTheme.theme,
                routerConfig: goRouter,
              );
            }));
  }
}
