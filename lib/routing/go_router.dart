import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lpio/features/account/account_screen.dart';
import 'package:lpio/features/beacons/beacons_screen.dart';
import 'package:lpio/features/bottom_navigation/bottom_navigation_screen.dart';
import 'package:lpio/features/home/home_screen.dart';
import 'package:lpio/features/login/login_screen.dart';
import 'package:lpio/features/zones/zones_screen.dart';

enum AppRoute {
  loginScreen,
  homeScreen,
  beaconsScreen,
  zoneHistoryScreen,
  accountScreen,
}

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
      initialLocation: '/',
      navigatorKey: _rootNavigatorKey,
      routes: [
        GoRoute(
          name: AppRoute.loginScreen.name,
          path: '/',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const LoginScreen(),
          ),
          routes: const [],
        ),
        ShellRoute(
          navigatorKey: _shellNavigator,
          pageBuilder: (context, state, child) => MaterialPage(
            key: state.pageKey,
            child: BottomNavigationScreen(
              key: state.pageKey,
              child: child,
            ),
          ),
          routes: [
            GoRoute(
              name: AppRoute.homeScreen.name,
              path: '/home',
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const HomeScreen(),
              ),
              routes: const [],
            ),
            GoRoute(
              name: AppRoute.beaconsScreen.name,
              path: '/beacons',
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const BeaconsScreen(),
              ),
              routes: const [],
            ),
            GoRoute(
              name: AppRoute.zoneHistoryScreen.name,
              path: '/zone/history',
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const ZonesScreen(),
              ),
              routes: const [],
            ),
            GoRoute(
              name: AppRoute.accountScreen.name,
              path: '/account',
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const AccountScreen(),
              ),
              routes: const [],
            )
          ],
        ),
      ]);
});
