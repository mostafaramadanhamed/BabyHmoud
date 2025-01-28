import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/features/home/ui/widgets/auto_scroll_banner.dart';
import 'package:babyhmoud/features/home/ui/widgets/slogan_banner.dart';
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
              const SloganBanner(),
              20.ph,
              Row(
                children: [
                  20.pw,
                  Builder(builder: (context) {
                    return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        size: 30,
                      ),
                    );
                  }),
                  40.pw,
                  Image.asset(
                    'assets/images/logo.png',
                    width: 100.w,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        size: 30,
                      )),
                  20.pw
                ],
              ),
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

