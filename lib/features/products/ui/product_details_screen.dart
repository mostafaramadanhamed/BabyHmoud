import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:babyhmoud/core/theme/text_styles.dart';
import 'package:babyhmoud/features/products/ui/widgets/bulled_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/baby_customization.dart';
import 'widgets/custom_drop_down_text_filed.dart';

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
                        'Soft and comfy overall – because your baby’s comfort is our top priority.Warm and cozy swaddle – ensures a peaceful and secure sleep.Elegant swaddle tie – adds a charming and stylish touch.Adorable cap – keeps your baby’s head protected in the cutest way.'),
                // why choose this product
                Text("Why choose it?", style: TextStyles.font16Medium),
                const BulletPointList(
                    text:
                        'High-quality name printing – lasts long and withstands up to 200 washes, keeping the design fresh and beautiful.Personalized touch – make the set unique with your baby’s name.Premium materials – gentle and safe for your baby’s delicate skin.'),
                Text(
                    '🎁 Make your baby’s moments unforgettable with a product that reflects care and attention to every detail!',
                    style: TextStyles.font14SemiBold),
                16.ph,
                // size dropdown
                Text("Size", style: TextStyles.font16Medium),
                8.ph,
                // size dropdown text field
                const CustomDropDownTextFiled(items: [
                  DropdownMenuItem(value: '0-3 months',child: Text('0-3 months'),),
                  DropdownMenuItem(value: '3-6 months',child: Text('3-6 months'),),
             
                ], value: '0-3 months',),
                 8.ph,
                 // color dropdown
                Text("Color of the Clothes", style: TextStyles.font16Medium),
                8.ph,
                // color dropdown text field
                const CustomDropDownTextFiled(items: [
                  DropdownMenuItem(value: 'Blue',child: Text('Blue'),),
                  DropdownMenuItem(value: 'Pink',child: Text('Pink'),),
                  DropdownMenuItem(value: 'White',child: Text('White'),),
             
                ], value: 'Blue',),
                16.ph,
                const BabyNameCustomizerScreen(),
               

              ],
            ),
          ),
        ));
  }
}
