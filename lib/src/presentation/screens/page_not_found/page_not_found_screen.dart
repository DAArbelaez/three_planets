import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three_planets/config/navigation/go_router.dart';
import 'package:three_planets/src/presentation/screens/home/home_screen.dart';
import 'package:three_planets/src/presentation/widgets/tp_button.dart';

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
            const Text('Page Not Found'),
            const SizedBox(height: 10),
            TPButton(txtLabel: "Volver al inicio", onPressed: () => goRouter.go(HomeScreen.path))
          ],
        ),
      ),
    );
  }
}
