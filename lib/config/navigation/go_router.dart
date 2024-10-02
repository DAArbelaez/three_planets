import 'package:go_router/go_router.dart';
import 'package:three_planets/src/presentation/pages/home/home_screen.dart';

/// Get the routes used by navigate in the app
var appRoutes = GoRouter(
  initialLocation: HomeScreen.path,
  routes: [
    GoRoute(
      path: HomeScreen.path,
      pageBuilder: (_, __) => const NoTransitionPage(child: HomeScreen()),
    ),
  ],
);
