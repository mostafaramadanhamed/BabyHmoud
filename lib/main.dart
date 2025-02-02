import 'package:babyhmoud/core/helper/app_secret.dart';
import 'package:babyhmoud/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopify_flutter/shopify_flutter.dart';


import 'baby_hmoud.dart';

/// The main function is the entry point of the Flutter application.
/// It initializes the app by calling `runApp` with `BabyHmoudApp`,
/// which sets up the application with the provided `AppRouter`.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();
  ShopifyConfig.setConfig(
    storefrontAccessToken: AppSecret.storeFrontApiKey,
    storeUrl: AppSecret.storeUrl,
  );
  try {
    await ShopifyStore.instance.getAllCollections();
    print('done');
  } catch (e) {
    print(e);
  }
  runApp(BabyHmoudApp(
    appRouter: AppRouter(),
  ));
}
