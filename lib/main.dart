import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:three_planets/config/navigation/go_router.dart';
import 'package:three_planets/config/theme/app_theme.dart';
import 'package:three_planets/src/data/local/shared_preferences_service.dart';
import 'package:three_planets/src/presentation/common/favorite_planets_service/favorite_planets_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GoRouter.optionURLReflectsImperativeAPIs = true;

  // Init shared preferences
  await SharedPreferencesService().init();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    /// Initializes the favorite planets provider.
    /// This logic shouldn't be placed here; it should be moved to an _initialization() function,
    /// ideally called during the splash screen of the application.
    ref.watch(favoritePlanetsServiceProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routerConfig: goRouter,
    );
  }
}
