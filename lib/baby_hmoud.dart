import 'package:babyhmoud/core/routing/app_router.dart';
import 'package:babyhmoud/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BabyHmoudApp extends StatelessWidget {

  final AppRouter appRouter;
  const BabyHmoudApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
                  primarySwatch: Colors.brown,),
        themeMode: ThemeMode.light,
        initialRoute: Routes.splash,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
