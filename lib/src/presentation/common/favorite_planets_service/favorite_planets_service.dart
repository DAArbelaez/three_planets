import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:three_planets/constants/tp_constants.dart';
import 'package:three_planets/src/data/local/shared_preferences_service.dart';

part 'favorite_planets_service.g.dart';

@Riverpod(keepAlive: true)
class FavoritePlanetsService extends _$FavoritePlanetsService {
  SharedPreferencesService get _preferences => SharedPreferencesService();

  @override
  Future<List<String>> build() async {
    return _preferences.getList(kFavoritesKey).then(
          (value) => value,
          onError: (_) => [],
        );
  }

  void addFavoritePlanet(String planetName) async {
    final savedList = await _preferences.addToList(kFavoritesKey, planetName);
    state = AsyncValue.data(savedList);
  }

  void removeFavoritePlanet(String planetName) async {
    final savedList = await _preferences.removeFromList(kFavoritesKey, planetName);
    state = AsyncValue.data(savedList);
  }

  void handleFavoriteOnTap(bool isFavorite, String planetName) {
    if (isFavorite) {
      removeFavoritePlanet(planetName);
    } else {
      addFavoritePlanet(planetName);
    }
  }
}
