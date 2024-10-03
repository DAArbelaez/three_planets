import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three_planets/config/navigation/go_router.dart';
import 'package:three_planets/constants/button_constants.dart';
import 'package:three_planets/constants/icon_constants.dart';
import 'package:three_planets/constants/text_constants.dart';
import 'package:three_planets/src/presentation/screens/home/home_screen.dart';
import 'package:three_planets/src/presentation/widgets/tp_button.dart';
import 'package:three_planets/utils/utils.dart';

class PageNotFoundScreen extends ConsumerWidget {
  static const name = 'pageNotFound';
  static const path = '/$name';

  const PageNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.read(goRouterProvider);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            k404NotFoundIcon,
            const SizedBox(height: 20),
            Text('Page Not Found', style: kMediumTitleTextStyle.copyWith(fontSize: 30, fontWeight: FontWeight.w700)),
            const SizedBox(height: 30),
            SizedBox(
              width: widthScreen(context) * responsiveInt(context, isDesktop: 0.2, isTablet: 0.7, isMobile: 1),
              child: TPButton(
                txtLabel: 'Volver al inicio',
                buttonHeight: 60,
                icon: kArrowBackIcon,
                buttonStyle: kTPButtonStyle.copyWith(
                  backgroundColor: const WidgetStatePropertyAll(Colors.purple),
                ),
                onPressed: () => goRouter.go(HomeScreen.path),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
