import 'package:babyhmoud/core/routing/routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      default:
        return null;
    }
  }
}