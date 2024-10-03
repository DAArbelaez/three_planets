import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three_planets/config/navigation/go_router.dart';
import 'package:three_planets/src/presentation/common/favorite_planets_service/favorite_planets_service.dart';
import 'package:three_planets/src/presentation/screens/planet_list/controller/planet_list_state.dart';
import 'package:three_planets/src/presentation/widgets/text_field/text_field.dart';

import 'planet_detail/planet_detail_screen.dart';

class PlanetListContainer extends ConsumerWidget {
  final PlanetListState? planetListState;

  final Function(String)? onFilterPlanet;

  const PlanetListContainer({
    super.key,
    this.planetListState,
    this.onFilterPlanet,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planets = planetListState?.planetListFiltered ?? [];
    final goRouter = ref.read(goRouterProvider);
    final favoritePlanetsProvider = ref.watch(favoritePlanetsServiceProvider);
    final favoritePlanetsNotifier = ref.read(favoritePlanetsServiceProvider.notifier);

    return Column(
      children: [
        TextCustomTextField(onTextChange: onFilterPlanet),
        const SizedBox(height: 20),
        ListView.builder(
          shrinkWrap: true,
          itemCount: planets.length,
          itemBuilder: (context, index) {
            final planet = planets[index];

            return favoritePlanetsProvider.when(
              data: (favoritePlanets) {
                final isFavorite = favoritePlanets.contains(planet.name.toLowerCase());

                return ListTile(
                  onTap: () => goRouter.push('${PlanetDetailScreen.path}/${planet.name}'),
                  trailing: IconButton(
                    onPressed: () => favoritePlanetsNotifier.handleFavoriteOnTap(isFavorite, planet.name),
                    icon: Icon(isFavorite ? Icons.star : Icons.star_outline),
                  ),
                  title: Row(
                    children: [
                      Text(planet.name),
                      const SizedBox(width: 5),
                      Text(planet.orbitalDistanceKm.toString()),
                      const SizedBox(width: 5),
                      Text(planet.equatorialRadiusKm.toString()),
                      const SizedBox(width: 5),
                    ],
                  ),
                );
              },
              error: (error, stackTrace) => const Text("Error al obtener los datos"),
              loading: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ],
    );
  }
}
