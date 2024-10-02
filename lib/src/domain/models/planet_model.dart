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
    return matchesName(lowerQuery) ||
        matchesOrbitalDistanceKm(lowerQuery) ||
        matchesEquatorialRadiusKm(lowerQuery) ||
        matchesVolumeKm3(lowerQuery) ||
        matchesMassKg(lowerQuery) ||
        matchesDensityGCm3(lowerQuery) ||
        matchesSurfaceGravityMS2(lowerQuery) ||
        matchesEscapeVelocity(lowerQuery) ||
        matchesDayLengthEarthDays(lowerQuery) ||
        matchesYearLengthEarthDays(lowerQuery) ||
        matchesOrbitalSpeedKmh(lowerQuery) ||
        matchesAtmosphereComposition(lowerQuery) ||
        matchesMoons(lowerQuery) ||
        matchesDescription(lowerQuery);
  }

  bool matchesName(String query) => name.toLowerCase().contains(query);

  bool matchesOrbitalDistanceKm(String query) => orbitalDistanceKm.toString().contains(query);

  bool matchesEquatorialRadiusKm(String query) => equatorialRadiusKm.toString().contains(query);

  bool matchesVolumeKm3(String query) => volumeKm3.toLowerCase().contains(query);

  bool matchesMassKg(String query) => massKg.toLowerCase().contains(query);

  bool matchesDensityGCm3(String query) => densityGCm3.toString().contains(query);

  bool matchesSurfaceGravityMS2(String query) => surfaceGravityMS2.toString().contains(query);

  bool matchesEscapeVelocity(String query) => escapeVelocity.toString().contains(query);

  bool matchesDayLengthEarthDays(String query) => dayLengthEarthDays.toString().contains(query);

  bool matchesYearLengthEarthDays(String query) => yearLengthEarthDays.toString().contains(query);

  bool matchesOrbitalSpeedKmh(String query) => orbitalSpeedKmh.toString().contains(query);

  bool matchesAtmosphereComposition(String query) => atmosphereComposition.toLowerCase().contains(query);

  bool matchesMoons(String query) => moons.toString().contains(query);

  bool matchesDescription(String query) => description.toLowerCase().contains(query);
}
