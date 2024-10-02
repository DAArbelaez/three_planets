import 'package:flutter/material.dart';
import 'package:three_planets/src/presentation/pages/planet_list/controller/planet_list_state.dart';

class PlanetListContainer extends StatelessWidget {
  final PlanetListState? planetListState;

  const PlanetListContainer({super.key, this.planetListState});

  @override
  Widget build(BuildContext context) {
    final planets = planetListState?.planetList ?? [];

    return Visibility(
      visible: planets.isNotEmpty,
      replacement: const Center(child: Text('No data found')),
      child: ListView.builder(
        itemCount: planets.length,
        itemBuilder: (context, index) {
          final planet = planets[index];

          return ListTile(title: Text(planet.name));
        },
      ),
    );
  }
}
