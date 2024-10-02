import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three_planets/config/navigation/go_router.dart';
import 'package:three_planets/src/presentation/screens/planet_list/controller/planet_list_state.dart';

import 'planet_detail/planet_detail_screen.dart';

class PlanetListContainer extends ConsumerWidget {
  final PlanetListState? planetListState;

  const PlanetListContainer({super.key, this.planetListState});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planets = planetListState?.planetList ?? [];
    final goRouter = ref.read(goRouterProvider);

    return Visibility(
      visible: planets.isNotEmpty,
      replacement: const Center(child: Text('No data found')),
      child: ListView.builder(
        itemCount: planets.length,
        itemBuilder: (context, index) {
          final planet = planets[index];

          return ListTile(
            onTap: () => goRouter.push('${PlanetDetailScreen.path}/${planet.name}'),
            title: Text(planet.name),
          );
        },
      ),
    );
  }
}
