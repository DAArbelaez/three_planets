import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:three_planets/config/navigation/go_router.dart';
import 'package:three_planets/src/domain/models/planet_model.dart';
import 'package:three_planets/src/presentation/screens/page_not_found/page_not_found_screen.dart';
import 'package:three_planets/src/presentation/screens/planet_list/controller/planet_list_controller.dart';
import 'package:three_planets/src/presentation/screens/planet_list/planet_detail/controller/planet_detail_state.dart';

part 'planet_detail_controller.g.dart';

@riverpod
class PlanetDetailController extends _$PlanetDetailController {
  GoRouter get goRouter => ref.read(goRouterProvider);

  @override
  PlanetDetailState? build({required String planetName}) {
    final provider = ref.watch(planetListControllerProvider);

    final planetList = provider.value?.planetList ?? [];

    if (planetList.isEmpty) return null;

    for (final planet in planetList) {
      if (planet.name.toLowerCase() == planetName.toLowerCase()) {
        return _createState(planet);
      }
    }

    // If the planet is not found, the user is redirected to 404 planet not found
    _redirectToNoPlanetFoundPage();

    return null;
  }

  PlanetDetailState _createState(PlanetModel planetModel) {
    return PlanetDetailState(
      isLoading: false,
      name: planetModel.name,
      orbitalDistanceKm: planetModel.orbitalDistanceKm,
      equatorialRadiusKm: planetModel.equatorialRadiusKm,
      volumeKm3: planetModel.volumeKm3,
      massKg: planetModel.massKg,
      densityGCm3: planetModel.densityGCm3,
      surfaceGravityMS2: planetModel.surfaceGravityMS2,
      escapeVelocity: planetModel.escapeVelocity,
      dayLengthEarthDays: planetModel.dayLengthEarthDays,
      yearLengthEarthDays: planetModel.yearLengthEarthDays,
      orbitalSpeedKmh: planetModel.orbitalSpeedKmh,
      atmosphereComposition: planetModel.atmosphereComposition,
      moons: planetModel.moons,
      image: planetModel.image,
      description: planetModel.description,
    );
  }

  void _redirectToNoPlanetFoundPage() => Future.microtask(() => goRouter.go(PageNotFoundScreen.path));
}
