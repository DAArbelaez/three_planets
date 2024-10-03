import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three_planets/constants/app_color_constants.dart';
import 'package:three_planets/constants/icon_constants.dart';
import 'package:three_planets/constants/text_constants.dart';
import 'package:three_planets/src/domain/models/planet_model.dart';
import 'package:three_planets/src/presentation/widgets/info_item.dart';

class PlanetListTile extends ConsumerWidget {
  const PlanetListTile({
    super.key,
    required this.planet,
    required this.isFavorite,
    required this.onIconPressed,
    required this.onPressed,
  });

  final PlanetModel planet;
  final bool isFavorite;
  final VoidCallback onIconPressed;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final infoList = [
      InfoItem(title: '${planet.orbitalDistanceKm}', icon: kEarthIcon),
      InfoItem(title: '${planet.equatorialRadiusKm}', icon: kCircleIcon),
      InfoItem(title: planet.massKg, icon: kFitnessCenterIcon),
      InfoItem(title: '${planet.surfaceGravityMS2}', icon: kArrowDownIcon),
      InfoItem(title: planet.atmosphereComposition, icon: kAtmosphereCompositionIcon),
      InfoItem(title: '${planet.moons}', icon: kMoonsIcon),
    ];

    final infoWrap = Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      runAlignment: WrapAlignment.start,
      alignment: WrapAlignment.start,
      runSpacing: 2,
      spacing: 20,
      children: infoList,
    );

    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: kSilver.withOpacity(0.5)),
      ),
      onTap: onPressed,
      trailing: IconButton(
        onPressed: onIconPressed,
        icon: Icon(isFavorite ? Icons.star : Icons.star_outline),
        iconSize: 30,
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(planet.name, style: kMediumTitleTextStyle.copyWith(fontWeight: FontWeight.w600)),
          const SizedBox(height: 10),
          infoWrap,
          const SizedBox(height: 5),
          Divider(color: kSilver.withOpacity(0.5)),
          Text(
            planet.description,
            style: kContentTextStyle.copyWith(fontWeight: FontWeight.w400),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
