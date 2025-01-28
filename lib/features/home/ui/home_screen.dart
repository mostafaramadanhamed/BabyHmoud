import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:babyhmoud/features/home/ui/widgets/auto_scroll_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/category_grid_view.dart';
import 'widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const CustomDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              10.ph,
              // location user
              Row(
                children: [
                  16.pw,
                  Column(
                    children: [
                      const Text("Location", style: TextStyle(fontWeight: FontWeight.w300)),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: AppColors.darkBrown,
                          ),
                          4.pw,
                          // user location
                          const Text(
                            "Riyadh",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  // notification
                  const CircleAvatar(
                      backgroundColor: AppColors.lighterBrown,
                      child: Icon(Icons.notifications,
                          color: AppColors.darkBrown)),
                  16.pw,
                ],
              ),
              8.ph,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    Expanded(
                      child: SearchBar(
                        hintText: "Search",
                        leading: Icon(Icons.search, color: Colors.brown),
                        backgroundColor:
                            WidgetStateProperty.all(Colors.white),
                        elevation: WidgetStateProperty.all(0),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                    ),
                    8.pw,
                    CircleAvatar(
                      backgroundColor: AppColors.darkBrown,
                      child: IconButton(
                        icon: const Icon(Icons.tune, color: Colors.white),
                        onPressed: () {
                          // Handle icon press
                        },
                      ),
                    ),
                  ],
                ),
              ),
              20.ph,

              const AutoScrollBanner(),
              20.ph,
              const CategoryGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
