import 'package:babyhmoud/core/helper/navigation_extension.dart';
import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/text_styles.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.productDetails);
      },
      child: Container(
        width: 180.w,
        margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/test.jpg',
                height: 125.h,
                width:double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  6.ph,
                  Row(
                    children: [
                      Text(
                        'Printing Set',
                        style: TextStyles.font16Medium,
                      ),
                      const Spacer(),
                      // rating
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                      4.pw,
                      Text('4.5', style: TextStyles.font14RegularGrey),
                    ],
                  ),
                  2.ph,
                  Text(
                    '\$100.00',
                    style: TextStyles.font14SemiBold.copyWith(
                      color: AppColors.darkBrown,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
