import 'package:babyhmoud/core/routing/app_router.dart';
import 'package:babyhmoud/core/routing/routes.dart';
import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BabyHmoudApp extends StatelessWidget {
  final AppRouter appRouter;
  const BabyHmoudApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFFFFEFD),
          primarySwatch: Colors.brown,
          appBarTheme: const AppBarTheme(
            backgroundColor:  AppColors.buttonBrown,
            foregroundColor: Colors.white,
            elevation: 0,
          ),
        ),
        themeMode: ThemeMode.light,
        initialRoute: Routes.splash,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
