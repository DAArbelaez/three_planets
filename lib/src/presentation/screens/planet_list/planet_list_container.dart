import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three_planets/config/navigation/go_router.dart';
import 'package:three_planets/constants/app_color_constants.dart';
import 'package:three_planets/src/presentation/common/favorite_planets_service/favorite_planets_service.dart';
import 'package:three_planets/src/presentation/screens/planet_list/controller/planet_list_state.dart';
import 'package:three_planets/src/presentation/widgets/error_message.dart';
import 'package:three_planets/src/presentation/widgets/planet_list_tile.dart';
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

    return Visibility(
      visible: planetListState != null,
      replacement: const ErrorMessage(message: "Error retrieving data"),
      child: Column(
        children: [
          Container(
            color: kWhite,
            padding: const EdgeInsets.only(bottom: 20),
            child: TextCustomTextField(
              hintText: 'Search',
              onTextChange: onFilterPlanet,
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              shrinkWrap: true,
              padding: const EdgeInsets.only(bottom: 20),
              itemCount: planets.length,
              itemBuilder: (context, index) {
                final planet = planets[index];

                return favoritePlanetsProvider.when(
                  data: (favoritePlanets) {
                    final isFavorite = favoritePlanets.contains(planet.name.toLowerCase());

                    return PlanetListTile(
                      onPressed: () => goRouter.push('${PlanetDetailScreen.path}/${planet.name}'),
                      onIconPressed: () => favoritePlanetsNotifier.handleFavoriteOnTap(isFavorite, planet.name),
                      planet: planet,
                      isFavorite: isFavorite,
                    );
                  },
                  error: (error, stackTrace) => const Text("Error al obtener los datos"),
                  loading: () => const Center(child: CircularProgressIndicator()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
