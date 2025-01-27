import 'package:babyhmoud/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'baby_hmoud.dart';

/// The main function is the entry point of the Flutter application.
/// It initializes the app by calling `runApp` with `BabyHmoudApp`,
/// which sets up the application with the provided `AppRouter`.

void main() {
runApp( BabyHmoudApp(appRouter: AppRouter(),));
}

