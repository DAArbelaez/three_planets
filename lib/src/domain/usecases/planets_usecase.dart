import 'package:three_planets/src/data/repositories/planet_repository.dart';
import 'package:three_planets/src/domain/mappers/planet_data_model_mapper.dart';
import 'package:three_planets/src/domain/models/planet_model.dart';
import 'package:three_planets/utils/error_handler.dart';

abstract interface class PlanetsUseCase {
  Future<List<PlanetModel>> fetchPlanets();
}

class PlanetsUseCaseImpl extends PlanetsUseCase {
  final PlanetRepository _planetRepository = PlanetRepositoryImpl();
  final PlanetDataModelMapper _planetDataModelMapper = PlanetDataModelMapperImpl();
  final ErrorHandler _errorHandler = ErrorHandler();

  @override
  Future<List<PlanetModel>> fetchPlanets() async {
    try {
      final List<PlanetModel> planetModelList = [];
      final res = await _planetRepository.fetchPlanets();

      for (final dataModel in res) {
        planetModelList.add(_planetDataModelMapper.toModel(dataModel));
      }

      return planetModelList;
    } catch (e) {
      _errorHandler.handleAndRecordError(error: e, functionName: 'fetchPlanets');
      return [];
    }
  }
}
