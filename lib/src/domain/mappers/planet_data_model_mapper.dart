import 'package:three_planets/src/data/models/planet_data_model.dart';
import 'package:three_planets/src/domain/models/planet_model.dart';

abstract interface class PlanetDataModelMapper {
  PlanetModel toModel(PlanetDataModel dataModel);
}

class PlanetDataModelMapperImpl extends PlanetDataModelMapper {
  @override
  PlanetModel toModel(PlanetDataModel dataModel) {
    return PlanetModel(
      name: dataModel.name ?? '',
      orbitalDistanceKm: dataModel.orbitalDistanceKm ?? 0,
      equatorialRadiusKm: dataModel.equatorialRadiusKm ?? 0,
      volumeKm3: dataModel.volumeKm3 ?? '',
      massKg: dataModel.massKg ?? '',
      densityGCm3: dataModel.densityGCm3 ?? 0.0,
      surfaceGravityMS2: dataModel.surfaceGravityMS2 ?? 0.0,
      escapeVelocity: dataModel.escapeVelocity ?? 0,
      dayLengthEarthDays: dataModel.dayLengthEarthDays ?? 0.0,
      yearLengthEarthDays: dataModel.yearLengthEarthDays ?? 0.0,
      orbitalSpeedKmh: dataModel.orbitalSpeedKmh ?? 0,
      atmosphereComposition: dataModel.atmosphereComposition ?? '',
      moons: dataModel.moons ?? 0,
      image: dataModel.image ?? '',
      description: dataModel.description ?? '',
    );
  }
}
