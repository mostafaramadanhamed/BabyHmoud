
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AutoScrollBanner extends StatelessWidget {


  const AutoScrollBanner({super.key});

  static final List<String> imgList = [
    'assets/images/BANNER.png',
    'assets/images/BANNER2.png',
    'assets/images/BANNER3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlayInterval: const Duration(seconds: 6),
        autoPlay: true,
        aspectRatio: 1.5,
        enlargeCenterPage: true,
      ),
      items: imgList
          .map((item) => Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(item, fit: BoxFit.fill, width: double.infinity,height: 150.h,)),
              ))
          .toList(),
    );
  }
}