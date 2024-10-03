import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three_planets/config/navigation/go_router.dart';
import 'package:three_planets/constants/button_constants.dart';
import 'package:three_planets/constants/icon_constants.dart';
import 'package:three_planets/constants/tp_constants.dart';
import 'package:three_planets/src/presentation/screens/planet_list/planet_list_screen.dart';
import 'package:three_planets/src/presentation/widgets/tp_button.dart';
import 'package:three_planets/utils/utils.dart';

class HomeScreen extends ConsumerWidget {
  static const path = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.read(goRouterProvider);

    return Scaffold(
      body: Padding(
        padding: kPagePadding,
        child: Center(
          child: SizedBox(
            width: widthScreen(context) * responsiveInt(context, isDesktop: 0.3, isTablet: 0.7, isMobile: 1),
            child: TPButton(
              txtLabel: 'Ver Planetas',
              buttonHeight: 60,
              icon: kRocketIcon,
              buttonStyle: kTPButtonStyle.copyWith(
                backgroundColor: const WidgetStatePropertyAll(Colors.purple),
              ),
              onPressed: () => goRouter.push(PlanetListScreen.path),
            ),
          ),
        ),
      ),
    );
  }
}
