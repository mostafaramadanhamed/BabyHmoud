import 'package:babyhmoud/core/routing/routes.dart';
import 'package:babyhmoud/features/auth/ui/login/login_screen.dart';
import 'package:babyhmoud/features/auth/ui/register/sign_up_screen.dart';
import 'package:babyhmoud/features/home/ui/home_screen.dart';
import 'package:babyhmoud/features/onboarding/ui/on_boarding_screen.dart';
import 'package:babyhmoud/features/products/ui/products_screen.dart';
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
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      
      case Routes.products:
        return MaterialPageRoute(builder: (_) => const ProductsScreen());
      default:
        return null;
    }
  }
}
