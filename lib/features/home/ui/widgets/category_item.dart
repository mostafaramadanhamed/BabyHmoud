import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:babyhmoud/features/home/ui/widgets/categories_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    // Handle category item tap
  },
  child: Card(
   color: Colors.white,
    elevation: 4.0,
    shadowColor: AppColors.primaryGold.withOpacity(0.8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0.r), // Increased border radius for a modern look
    ),
    child: Column(
    
      children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16.0.r), // Rounded corners only at the top
          ),
          child: Image.asset(
            category.image,
            width: double.infinity,
            height: 120.0, // Increased height for better visual focus
            fit: BoxFit.cover,
          ),
        ),
        12.ph,
        Text(
          category.name,
          textAlign: TextAlign.center,
          style:  TextStyle(
            fontSize: 16.0.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    ),
  ),
)
;
  }
}
