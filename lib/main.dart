import 'dart:convert';

import 'package:babyhmoud/core/helper/app_secret.dart';
import 'package:babyhmoud/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shopify_flutter/shopify_flutter.dart';
import 'package:http/http.dart'as http;


import 'baby_hmoud.dart';

/// The main function is the entry point of the Flutter application.
/// It initializes the app by calling `runApp` with `BabyHmoudApp`,
/// which sets up the application with the provided `AppRouter`.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();
 
    try {
    await ShopifyService.getProducts();
  } catch (e) {
    print("Error: $e");
  }
  runApp(BabyHmoudApp(
    appRouter: AppRouter(),
  ));
}
class ShopifyService {
  static const String shopName = 'babyhumod'; // Without .myshopify.com
  static const String accessToken = "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";

  static Future<void> getProducts() async {
    final url = Uri.https("$shopName.myshopify.com", "/admin/api/2025-01/products.json");
  final response = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
        "X-Shopify-Access-Token": accessToken,
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print("Products: ${data["products"]}");
    } else {
      print("Failed to load products. Status Code: ${response.statusCode}");
      print("Response Body: ${response.body}");
    }
  }
}