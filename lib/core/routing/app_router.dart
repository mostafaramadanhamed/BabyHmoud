import 'package:babyhmoud/core/routing/routes.dart';
import 'package:babyhmoud/features/auth/ui/login/login_screen.dart';
import 'package:babyhmoud/features/auth/ui/register/sign_up_screen.dart';
import 'package:babyhmoud/features/cart/ui/cart_screen.dart';
import 'package:babyhmoud/features/home/ui/home_screen.dart';
import 'package:babyhmoud/features/home/ui/main_screen.dart';
import 'package:babyhmoud/features/onboarding/ui/on_boarding_screen.dart';
import 'package:babyhmoud/features/products/ui/products_screen.dart';
import 'package:babyhmoud/features/splash/ui/splash_screen.dart';
import 'package:babyhmoud/features/wish%20list/ui/wish_list_screen.dart';
import 'package:flutter/material.dart';

import '../../features/notification/ui/notifications_screen.dart';
import '../../features/products/ui/product_details_screen.dart';

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

    case Routes.productDetails:
        return MaterialPageRoute(builder: (_) =>  const ProductDetailsScreen());
    
    case Routes.wishList:
        return MaterialPageRoute(builder: (_) =>  const WishListScreen());

    case Routes.cart:
        return MaterialPageRoute(builder: (_) =>  const CartScreen());
    
    case Routes.main:
        return MaterialPageRoute(builder: (_) => const MainScreen());
    
    case Routes.notifications:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());
      default:
        return null;
    }
  }
}
