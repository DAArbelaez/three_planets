import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three_planets/src/presentation/pages/home/home_screen.dart';
import 'package:three_planets/src/presentation/pages/planet_list/controller/planet_list_controller.dart';
import 'package:three_planets/src/presentation/pages/planet_list/planet_list_container.dart';

class PlanetListScreen extends ConsumerWidget {
  static const name = 'planets';
  static const path = '${HomeScreen.path}/$name';

  const PlanetListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(planetListControllerProvider);

    return Scaffold(
      body: Center(
        child: controller.when(
          data: (data) => PlanetListContainer(planetListState: data),
          error: (_, __) => const PlanetListContainer(),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
