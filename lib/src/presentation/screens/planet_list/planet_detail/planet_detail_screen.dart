import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three_planets/constants/app_color_constants.dart';
import 'package:three_planets/constants/icon_constants.dart';
import 'package:three_planets/constants/text_constants.dart';
import 'package:three_planets/constants/tp_constants.dart';
import 'package:three_planets/src/presentation/screens/planet_list/planet_detail/controller/planet_detail_controller.dart';
import 'package:three_planets/src/presentation/screens/planet_list/planet_list_screen.dart';
import 'package:three_planets/src/presentation/widgets/info_item.dart';
import 'package:three_planets/utils/responsive.dart';

class PlanetDetailScreen extends ConsumerWidget {
  static const path = PlanetListScreen.path;

  final String planet;

  const PlanetDetailScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(planetDetailControllerProvider(planetName: planet));

    final planetImage = ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/images/image-not-found.png',
        image: controller?.image ?? '',
        fit: BoxFit.cover,
        imageErrorBuilder: (context, error, stackTrace) {
          return Image.asset('assets/images/image-not-found.png');
        },
      ),
    );

    final planetDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(controller?.name ?? '', style: kTitleTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 30)),
        const SizedBox(height: 20),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          runAlignment: WrapAlignment.start,
          alignment: WrapAlignment.start,
          runSpacing: 5,
          spacing: 20,
          children: [
            InfoItem(title: '${controller?.orbitalDistanceKm}', icon: kEarthIcon),
            InfoItem(title: '${controller?.equatorialRadiusKm}', icon: kCircleIcon),
            InfoItem(title: controller?.massKg ?? '0.0', icon: kFitnessCenterIcon),
            InfoItem(title: '${controller?.surfaceGravityMS2}', icon: kArrowDownIcon),
            InfoItem(title: controller?.atmosphereComposition ?? '0.0', icon: kAtmosphereCompositionIcon),
            InfoItem(title: '${controller?.moons}', icon: kMoonsIcon),
          ],
        ),
        const SizedBox(height: 20),
        Divider(color: kSilver.withOpacity(0.5)),
        const SizedBox(height: 20),
        Text('Description', style: kSubtitleTextStyle.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(height: 10),
        Text(controller?.description ?? '', style: kContentTextStyle),
      ],
    );

    final compactLayout = SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          planetImage,
          const SizedBox(height: 10),
          planetDetails,
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: kPagePadding,
        child: Visibility(
          visible: controller?.isLoading == false,
          replacement: const Center(child: CircularProgressIndicator()),
          child: Responsive(
            mobile: compactLayout,
            tablet: compactLayout,
            desktop: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      planetImage,
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Flexible(
                  fit: FlexFit.tight,
                  child: planetDetails,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
