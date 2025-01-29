import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:babyhmoud/features/home/ui/widgets/auto_scroll_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/text_styles.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.ph,
              // location user
              Row(
                children: [
                  16.pw,
                  Column(
                    children: [
                      const Text("Location",
                          style: TextStyle(fontWeight: FontWeight.w300)),
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
                        leading: const Icon(Icons.search, color: Colors.brown),
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                        elevation: WidgetStateProperty.all(0),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text('Categories',
                    style: TextStyles.font20SemiBold.copyWith(
                      fontSize: 18.sp,
                    )),
              ),
              16.ph,
              const CategoryListView(),
              20.ph,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text('Most Sold', style: TextStyles.font20SemiBold),
              ),
              16.ph,
              // most sold products
              SizedBox(
                height: 200,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 16.w),
                      width: 140.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: AppColors.primaryGold,
                        image: const DecorationImage(
                          image:  AssetImage('assets/images/test.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              20.ph,
            ],
          ),
        ),
      ),
    );
  }
}
