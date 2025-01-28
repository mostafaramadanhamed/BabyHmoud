import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SloganBanner extends StatelessWidget {
  const SloganBanner({super.key});

  static final List<String> slogan = [
    "Welcome To Our Store",
    "Free Shipping on orders over 40 KD",
    "Fast delivery for all newborn essentials",
    "Luxury gifts tailored for the perfect baby shower",
    "Same-Day Delivery for Printed Sets - in Kuwait",
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlayInterval: const Duration(seconds: 30),
        autoPlay: true,
        aspectRatio: 20 / 2,
        enlargeCenterPage: false,
        viewportFraction: 1,
      ),
      items: slogan
          .map((item) => Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: AppColors.primaryGold,
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primaryGold.withOpacity(0.4),
                      AppColors.primaryGold.withOpacity(0.8),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Text(
                  item,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ))
          .toList(),
    );
  }
}
