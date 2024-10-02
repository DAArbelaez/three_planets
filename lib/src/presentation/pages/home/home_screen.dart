import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:three_planets/constants/tp_constants.dart';
import 'package:three_planets/src/presentation/pages/planet_list/planet_list_screen.dart';
import 'package:three_planets/src/presentation/widgets/tp_button.dart';
import 'package:three_planets/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  static const path = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kPagePadding,
        child: Center(
          child: SizedBox(
            width: widthScreen(context) * responsiveInt(context, isDesktop: 0.5, isTablet: 0.7, isMobile: 1),
            child: TPButton(
              txtLabel: 'Ver Planetas',
              onPressed: () => context.push(PlanetListScreen.path),
            ),
          ),
        ),
      ),
    );
  }
}
