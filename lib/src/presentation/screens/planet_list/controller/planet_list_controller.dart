import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:three_planets/src/domain/models/planet_model.dart';
import 'package:three_planets/src/domain/usecases/planets_usecase.dart';
import 'package:three_planets/src/presentation/screens/planet_list/controller/planet_list_state.dart';

part 'planet_list_controller.g.dart';

@Riverpod(keepAlive: true)
class PlanetListController extends _$PlanetListController {
  @override
  Future<PlanetListState?> build() {
    final PlanetsUseCase useCase = PlanetsUseCaseImpl();

    return useCase.fetchPlanets().then(
          (planets) => _createState(planets),
          onError: (error) => state = const AsyncValue.data(null),
        );
  }

  PlanetListState _createState(List<PlanetModel> planets) {
    return PlanetListState(
      planetList: planets,
      planetListFiltered: planets,
    );
  }

  void filterByQuery(String query) {
    if (state.value == null) return;

    final filteredList = state.value?.planetList.where((planet) => planet.matchesQuery(query)).toList();

    state = AsyncValue.data(state.value!.copyWith(planetListFiltered: filteredList));
  }
}
