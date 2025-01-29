import 'package:babyhmoud/core/helper/navigation_extension.dart';
import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:babyhmoud/features/home/ui/widgets/categories_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';

class CategoryItem extends StatelessWidget {
  final CategoriesData category;
  const CategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          context.pushNamed(Routes.products);
        },
        child: Container(
          constraints: BoxConstraints(
            minHeight: 140.h,
          ),
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: AppColors.primaryGold,
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.cover),
            gradient: LinearGradient(
              colors: [
                AppColors.primaryGold.withOpacity(0.4),
                AppColors.primaryGold.withOpacity(0.8),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Container(
            height: 32.h,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(8.0),
              ),
              color: AppColors.pimaryBrown.withOpacity(0.8),
              gradient: LinearGradient(
                colors: [
                  AppColors.pimaryBrown.withOpacity(0.4),
                  AppColors.pimaryBrown.withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Text(
              category.name,
              style: TextStyle(
                color: AppColors.lighterBrown,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
          ),
        ));
  }
}
