import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three_planets/constants/tp_constants.dart';
import 'package:three_planets/src/presentation/screens/home/home_screen.dart';
import 'package:three_planets/src/presentation/screens/planet_list/controller/planet_list_controller.dart';
import 'package:three_planets/src/presentation/screens/planet_list/planet_list_container.dart';

class PlanetListScreen extends ConsumerWidget {
  static const name = 'planets';
  static const path = '${HomeScreen.path}/$name';

  const PlanetListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(planetListControllerProvider);
    final notifier = ref.read(planetListControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: kPagePadding,
        child: Center(
          child: controller.when(
            data: (data) => PlanetListContainer(
              planetListState: data,
              onFilterPlanet: (query) => notifier.filterByQuery(query),
            ),
            error: (_, __) => const PlanetListContainer(),
            loading: () => const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
