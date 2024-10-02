import 'package:json_annotation/json_annotation.dart';

part 'planet_data_model.g.dart';

@JsonSerializable()
class PlanetDataModel {
  final String? name;

  @JsonKey(name: 'orbital_distance_km')
  final int? orbitalDistanceKm;

  @JsonKey(name: 'equatorial_radius_km')
  final int? equatorialRadiusKm;

  @JsonKey(name: 'volume_km3', fromJson: _fromJsonToString)
  final String? volumeKm3;

  @JsonKey(name: 'mass_kg')
  final String? massKg;

  @JsonKey(name: 'density_g_cm3')
  final double? densityGCm3;

  @JsonKey(name: 'surface_gravity_m_s2')
  final double? surfaceGravityMS2;

  @JsonKey(name: 'escape_velocity_kmh')
  final int? escapeVelocity;

  @JsonKey(name: 'day_length_earth_days')
  final double? dayLengthEarthDays;

  @JsonKey(name: 'year_length_earth_days')
  final double? yearLengthEarthDays;

  @JsonKey(name: 'orbital_speed_kmh')
  final int? orbitalSpeedKmh;

  @JsonKey(name: 'atmosphere_composition')
  final String? atmosphereComposition;

  @JsonKey(name: 'moons')
  final int? moons;

  final String? image;

  final String? description;

  const PlanetDataModel({
    this.name,
    this.orbitalDistanceKm,
    this.equatorialRadiusKm,
    this.volumeKm3,
    this.massKg,
    this.densityGCm3,
    this.surfaceGravityMS2,
    this.escapeVelocity,
    this.dayLengthEarthDays,
    this.yearLengthEarthDays,
    this.orbitalSpeedKmh,
    this.atmosphereComposition,
    this.moons,
    this.image,
    this.description,
  });

  factory PlanetDataModel.fromJson(Map<String, dynamic> json) => _$PlanetDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$PlanetDataModelToJson(this);

  static String? _fromJsonToString(dynamic value) {
    switch (value) {
      case int _:
        return value.toString();
      case String _:
        return value;
      default:
        return null;
    }
  }
}
