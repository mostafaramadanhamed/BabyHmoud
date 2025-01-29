

import 'package:babyhmoud/core/helper/navigation_extension.dart';
import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/test.jpg',
              height: 125.h,
              width: double.infinity,
              fit: BoxFit.cover,
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
                  8.ph,
                  Text(
                    '\$100.00',
                    style: TextStyles.font14SemiBold,
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
