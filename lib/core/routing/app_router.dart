import 'package:babyhmoud/core/routing/routes.dart';
import 'package:babyhmoud/features/splash/ui/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return null;
    }
  }
}