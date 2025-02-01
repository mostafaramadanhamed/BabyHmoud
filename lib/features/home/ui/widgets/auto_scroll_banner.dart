
import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AutoScrollBanner extends StatefulWidget {


  const AutoScrollBanner({super.key});

  static final List<String> imgList = [
    'assets/images/BANNER.png',
    'assets/images/BANNER.png',
    'assets/images/BANNER.png',
    'assets/images/BANNER2.png',
    'assets/images/BANNER3.png',
  ];

  @override
  State<AutoScrollBanner> createState() => _AutoScrollBannerState();
}

class _AutoScrollBannerState extends State<AutoScrollBanner> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) => setState(() => _current = index),
              autoPlayInterval: const Duration(seconds: 6),
              autoPlay: true,
              aspectRatio: 4/2,
              enlargeCenterPage: false,
              viewportFraction: 1,
            ),
            
            items: AutoScrollBanner.imgList
                .map((item) => Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(item, fit: BoxFit.fill, width: double.infinity,height: 165.h,)),
                    ))
                .toList(),
          ),
         Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                AutoScrollBanner.imgList.length,
                (index) => Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? AppColors.darkBrown
                        : Colors.grey,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}