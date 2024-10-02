import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three_planets/src/presentation/screens/planet_list/planet_detail/controller/planet_detail_controller.dart';
import 'package:three_planets/src/presentation/screens/planet_list/planet_list_screen.dart';

class PlanetDetailScreen extends ConsumerWidget {
  static const path = PlanetListScreen.path;

  final String planet;

  const PlanetDetailScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(planetDetailControllerProvider(planetName: planet));

    return Scaffold(
      body: Visibility(
        visible: controller?.isLoading == false,
        replacement: const Center(child: CircularProgressIndicator()),
        child: Center(
          child: Text('Planet Detail ${controller?.name}'),
        ),
      ),
    );
  }
}
