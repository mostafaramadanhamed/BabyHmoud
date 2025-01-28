import 'package:babyhmoud/core/routing/routes.dart';
import 'package:babyhmoud/features/auth/ui/login/login_screen.dart';
import 'package:babyhmoud/features/onboarding/ui/on_boarding_screen.dart';
import 'package:babyhmoud/features/splash/ui/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.register:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return null;
    }
  }
}
