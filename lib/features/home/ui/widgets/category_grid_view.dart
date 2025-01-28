import 'package:babyhmoud/features/home/ui/widgets/categories_data.dart';
import 'package:babyhmoud/features/home/ui/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio:0.9,
          ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return CategoryItem(
          category: categories[index],
        );
      },
    );
  }
}
