import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:three_planets/src/presentation/screens/home/home_screen.dart';
import 'package:three_planets/src/presentation/screens/page_not_found/page_not_found_screen.dart';
import 'package:three_planets/src/presentation/screens/planet_list/planet_detail/planet_detail_screen.dart';
import 'package:three_planets/src/presentation/screens/planet_list/planet_list_screen.dart';

final goRouterProvider = Provider<GoRouter>((_) => GoRouterHelper().router);

/// Get the routes used by navigate in the app
class GoRouterHelper {
  static final GoRouterHelper _instance = GoRouterHelper._internal();

  factory GoRouterHelper() => _instance;

  late final GoRouter router;

  GoRouterHelper._internal() {
    var appRoutes = [
      GoRoute(
        path: HomeScreen.path,
        pageBuilder: (_, __) => const NoTransitionPage(child: HomeScreen()),
        routes: [
          GoRoute(
            path: PlanetListScreen.name,
            pageBuilder: (_, __) => const NoTransitionPage(child: PlanetListScreen()),
            routes: [
              GoRoute(
                path: ':planet',
                pageBuilder: (_, state) {
                  return NoTransitionPage(
                      child: PlanetDetailScreen(
                    planet: state.pathParameters['planet'] as String,
                  ));
                },
              ),
            ],
          ),
        ],
      ),
    ];

    router = GoRouter(
      debugLogDiagnostics: true,
      initialLocation: HomeScreen.path,
      routes: appRoutes,
      errorPageBuilder: (_, __) => const NoTransitionPage(child: PageNotFoundScreen()),
    );
  }
}
