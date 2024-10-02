import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:three_planets/src/domain/models/planet_model.dart';
import 'package:three_planets/src/domain/usecases/planets_usecase.dart';
import 'package:three_planets/src/presentation/pages/planet_list/controller/planet_list_state.dart';

part 'planet_list_controller.g.dart';

@riverpod
class PlanetListController extends _$PlanetListController {
  @override
  Future<PlanetListState> build() {
    final PlanetsUseCase useCase = PlanetsUseCaseImpl();

    return useCase.fetchPlanets().then(
          (planets) => _createState(planets),
          onError: (error) => state = AsyncValue.data(_createState([])),
        );
  }

  PlanetListState _createState(List<PlanetModel> planets) {
    return PlanetListState(planetList: planets);
  }
}
