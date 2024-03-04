import 'package:flutter/material.dart';
import 'package:shop/navigation/app_router.dart';

class ShopApp extends StatelessWidget {
  ShopApp({super.key});

  final AppRouter _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router.config(
        navigatorObservers: () => [
          HeroController(),
        ]
      ),
      theme: ThemeData.light(
        useMaterial3: true,
      ),
    );
  }
}
