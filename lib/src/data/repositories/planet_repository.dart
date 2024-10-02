import 'package:dio/dio.dart';
import 'package:three_planets/config/apis/dio_config.dart';
import 'package:three_planets/src/data/models/planet_data_model.dart';
import 'package:three_planets/src/data/models/response_model.dart';

abstract interface class PlanetRepository {
  Future<List<PlanetDataModel>> fetchPlanets();
}

class PlanetRepositoryImpl extends PlanetRepository {
  final Dio _dio = DioConfig.createDio();

  @override
  Future<List<PlanetDataModel>> fetchPlanets() async {
    List<PlanetDataModel> planetModelList = [];

    final response = await _dio.get('/planets');

    final modelResponse = ResponseModel.fromJson(response.data);

    for (final planetsMap in modelResponse.data) {
      planetModelList.add(PlanetDataModel.fromJson(planetsMap));
    }

    return planetModelList;
  }
}
