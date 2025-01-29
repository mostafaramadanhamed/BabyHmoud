import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:babyhmoud/core/theme/text_styles.dart';
import 'package:babyhmoud/features/products/ui/widgets/bulled_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Product Details"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // product image
                ClipRRect(
                    borderRadius: BorderRadius.circular(15.0.r),
                    child: Image.asset(
                      'assets/images/test.jpg',
                      height: 300.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
                16.ph,
                // product name
                Text(
                  "Priniting Set - 4 PCS",
                  style: TextStyles.font20SemiBold,
                ),
                8.ph,
                // product price
                Text(
                  "SAR ${100.toDouble()}",
                  style: TextStyles.font16Medium
                      .copyWith(color: AppColors.primaryGold),
                ),
                8.ph,
                // product sub title
                Text(
                  'Add a personal touch to your baby’s precious moments with this special set, designed with love and care. 👶',
                  style: TextStyles.font14SemiBold,
                ),
                16.ph,
                // product description
                Text(
                  'Set includes:',
                  style: TextStyles.font16Medium,
                ),
                const BulletPointList(
                    text:
                        'Soft and comfy overall – because your baby’s comfort is our top priority.Warm and cozy swaddle – ensures a peaceful and secure sleep.Elegant swaddle tie – adds a charming and stylish touch.Adorable cap – keeps your baby’s head protected in the cutest way.')
                // product rating
                // product reviews
                // product quantity
                // product add to cart button
              ],
            ),
          ),
        ));
  }
}
