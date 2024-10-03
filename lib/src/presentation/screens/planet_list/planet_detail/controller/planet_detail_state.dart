class PlanetDetailState {
  final bool isLoading;

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

  PlanetDetailState({
    this.isLoading = true,
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

  PlanetDetailState copyWith({
    bool? isLoading,
    String? name,
    int? orbitalDistanceKm,
    int? equatorialRadiusKm,
    String? volumeKm3,
    String? massKg,
    double? densityGCm3,
    double? surfaceGravityMS2,
    int? escapeVelocity,
    double? dayLengthEarthDays,
    double? yearLengthEarthDays,
    int? orbitalSpeedKmh,
    String? atmosphereComposition,
    int? moons,
    String? image,
    String? description,
  }) {
    return PlanetDetailState(
      isLoading: isLoading ?? this.isLoading,
      name: name ?? this.name,
      orbitalDistanceKm: orbitalDistanceKm ?? this.orbitalDistanceKm,
      equatorialRadiusKm: equatorialRadiusKm ?? this.equatorialRadiusKm,
      volumeKm3: volumeKm3 ?? this.volumeKm3,
      massKg: massKg ?? this.massKg,
      densityGCm3: densityGCm3 ?? this.densityGCm3,
      surfaceGravityMS2: surfaceGravityMS2 ?? this.surfaceGravityMS2,
      escapeVelocity: escapeVelocity ?? this.escapeVelocity,
      dayLengthEarthDays: dayLengthEarthDays ?? this.dayLengthEarthDays,
      yearLengthEarthDays: yearLengthEarthDays ?? this.yearLengthEarthDays,
      orbitalSpeedKmh: orbitalSpeedKmh ?? this.orbitalSpeedKmh,
      atmosphereComposition: atmosphereComposition ?? this.atmosphereComposition,
      moons: moons ?? this.moons,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }
}
