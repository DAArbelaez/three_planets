// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$planetDetailControllerHash() =>
    r'1c0e86b381fa5b9c3f520092f42cf0ffb2b9062e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PlanetDetailController
    extends BuildlessAutoDisposeNotifier<PlanetDetailState?> {
  late final String planetName;

  PlanetDetailState? build({
    required String planetName,
  });
}

/// See also [PlanetDetailController].
@ProviderFor(PlanetDetailController)
const planetDetailControllerProvider = PlanetDetailControllerFamily();

/// See also [PlanetDetailController].
class PlanetDetailControllerFamily extends Family<PlanetDetailState?> {
  /// See also [PlanetDetailController].
  const PlanetDetailControllerFamily();

  /// See also [PlanetDetailController].
  PlanetDetailControllerProvider call({
    required String planetName,
  }) {
    return PlanetDetailControllerProvider(
      planetName: planetName,
    );
  }

  @override
  PlanetDetailControllerProvider getProviderOverride(
    covariant PlanetDetailControllerProvider provider,
  ) {
    return call(
      planetName: provider.planetName,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'planetDetailControllerProvider';
}

/// See also [PlanetDetailController].
class PlanetDetailControllerProvider extends AutoDisposeNotifierProviderImpl<
    PlanetDetailController, PlanetDetailState?> {
  /// See also [PlanetDetailController].
  PlanetDetailControllerProvider({
    required String planetName,
  }) : this._internal(
          () => PlanetDetailController()..planetName = planetName,
          from: planetDetailControllerProvider,
          name: r'planetDetailControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$planetDetailControllerHash,
          dependencies: PlanetDetailControllerFamily._dependencies,
          allTransitiveDependencies:
              PlanetDetailControllerFamily._allTransitiveDependencies,
          planetName: planetName,
        );

  PlanetDetailControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.planetName,
  }) : super.internal();

  final String planetName;

  @override
  PlanetDetailState? runNotifierBuild(
    covariant PlanetDetailController notifier,
  ) {
    return notifier.build(
      planetName: planetName,
    );
  }

  @override
  Override overrideWith(PlanetDetailController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PlanetDetailControllerProvider._internal(
        () => create()..planetName = planetName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        planetName: planetName,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PlanetDetailController, PlanetDetailState?>
      createElement() {
    return _PlanetDetailControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlanetDetailControllerProvider &&
        other.planetName == planetName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, planetName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PlanetDetailControllerRef
    on AutoDisposeNotifierProviderRef<PlanetDetailState?> {
  /// The parameter `planetName` of this provider.
  String get planetName;
}

class _PlanetDetailControllerProviderElement
    extends AutoDisposeNotifierProviderElement<PlanetDetailController,
        PlanetDetailState?> with PlanetDetailControllerRef {
  _PlanetDetailControllerProviderElement(super.provider);

  @override
  String get planetName =>
      (origin as PlanetDetailControllerProvider).planetName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
