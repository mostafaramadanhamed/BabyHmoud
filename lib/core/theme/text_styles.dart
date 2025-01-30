import 'package:babyhmoud/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class TextStyles {
  static TextStyle font23SemiBold = TextStyle(
    fontSize: 23.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font20SemiBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  // font 18 semi bold
  static TextStyle font18SemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

  // font 17 black
  static TextStyle font17Black = TextStyle(
      fontSize: 17.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.black);
  // font 15 dark brown
  static TextStyle font15DarkBrown = TextStyle(
    fontSize: 15.sp,
    color: AppColors.darkBrown,
  );
  // font 14 regular grey
  static TextStyle font14RegularGrey = TextStyle(
    fontSize: 14.sp,
    color: Colors.grey,
  );

  // font 16 meduim
  static TextStyle font16Medium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
  );

  // font 14 semi bold
  static TextStyle font14SemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

  // font 12 regular
  static TextStyle font12Regular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
  );
}
