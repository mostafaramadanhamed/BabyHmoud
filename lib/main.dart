import 'package:babyhmoud/core/routing/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'baby_hmoud.dart';
import 'firebase_options.dart';

/// The main function is the entry point of the Flutter application.
/// It initializes the app by calling `runApp` with `BabyHmoudApp`,
/// which sets up the application with the provided `AppRouter`.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(BabyHmoudApp(
    appRouter: AppRouter(),
  ));
}
