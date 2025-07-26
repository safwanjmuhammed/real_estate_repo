import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:iroid_application/src/config/route/routes.dart';
import 'package:iroid_application/src/feature/home_screen/presentation/home_screen.dart';

final routerProvider = Provider<AppRouter>((ref) => AppRouter());

class AppRouter {
  GoRouter goRouter = GoRouter(
    navigatorKey: _rootKey,
    initialLocation: '/home-screen',
    routes: [
      GoRoute(
        path: '/home-screen',
        name: Routes.home,
        parentNavigatorKey: _rootKey,
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
    ],
  );

  static final _rootKey = GlobalKey<NavigatorState>(
    debugLabel: 'root_navigator_key',
  );

  static BuildContext? get context => _rootKey.currentContext;
}
