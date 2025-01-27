import 'package:babyhmoud/core/routing/app_router.dart';
import 'package:babyhmoud/core/routing/routes.dart';
import 'package:flutter/material.dart';

class BabyHmoudApp extends StatelessWidget {
  final AppRouter appRouter;
  const BabyHmoudApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
