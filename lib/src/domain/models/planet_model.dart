class PlanetModel {
  final String name;

  final int orbitalDistanceKm;

  final int equatorialRadiusKm;

  final String volumeKm3;

  final String massKg;

  final double densityGCm3;

  final double surfaceGravityMS2;

  final int escapeVelocity;

  final double dayLengthEarthDays;

  final double yearLengthEarthDays;

  final int orbitalSpeedKmh;

  final String atmosphereComposition;

  final int moons;

  final String image;

  final String description;

  PlanetModel({
    required this.name,
    required this.orbitalDistanceKm,
    required this.equatorialRadiusKm,
    required this.volumeKm3,
    required this.massKg,
    required this.densityGCm3,
    required this.surfaceGravityMS2,
    required this.escapeVelocity,
    required this.dayLengthEarthDays,
    required this.yearLengthEarthDays,
    required this.orbitalSpeedKmh,
    required this.atmosphereComposition,
    required this.moons,
    required this.image,
    required this.description,
  });

  bool matchesQuery(String query) {
    final lowerQuery = query.toLowerCase();

    final List<String> valuesToCheck = [
      name.toLowerCase(),
      orbitalDistanceKm.toString(),
      equatorialRadiusKm.toString(),
      volumeKm3.toLowerCase(),
      massKg.toLowerCase(),
      densityGCm3.toString(),
      surfaceGravityMS2.toString(),
      escapeVelocity.toString(),
      dayLengthEarthDays.toString(),
      yearLengthEarthDays.toString(),
      orbitalSpeedKmh.toString(),
      atmosphereComposition.toLowerCase(),
      moons.toString(),
      description.toLowerCase(),
    ];

    return valuesToCheck.any((value) => value.contains(lowerQuery));
  }
}
