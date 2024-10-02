import 'package:three_planets/src/domain/models/planet_model.dart';

class PlanetListState {
  final List<PlanetModel> planetList;
  final List<PlanetModel> planetListFiltered;

  PlanetListState({
    required this.planetList,
    required this.planetListFiltered,
  });

  PlanetListState copyWith({
    List<PlanetModel>? planetList,
    List<PlanetModel>? planetListFiltered,
  }) {
    return PlanetListState(
      planetList: planetList ?? this.planetList,
      planetListFiltered: planetListFiltered ?? this.planetListFiltered,
    );
  }
}
