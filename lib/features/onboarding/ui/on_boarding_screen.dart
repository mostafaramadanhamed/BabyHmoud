import 'package:babyhmoud/core/helper/navigation_extension.dart';
import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/routing/routes.dart';
import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:babyhmoud/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 64.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // app logo
          Image.asset(
            'assets/images/logo.png',
            height: 150.h,
          ),
          100.ph,
          // login button
          AppTextButton(
            buttonText: 'Login',
            onPressed: () {
              // navigate to login screen
              context.pushNamed(Routes.login);
            },
          ),
          20.ph,
          // register button
          AppTextButton(
            buttonText: 'Register',
            onPressed: () {
              // navigate to register screen
              context.pushNamed(Routes.register);
            },
          ),
          20.ph,
          // login as guest button
          AppTextButton(
            buttonText: 'Login as guest',
            onPressed: () {
              // navigate to home screen
              context.pushNamed(Routes.home);
            },
          ),
          40.ph,
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              side: const BorderSide(color: AppColors.pimaryBrown),
            ),
            icon: const Icon(
              Icons.language,
              color: AppColors.pimaryBrown,
            ),
            label: const Text(
              'English',
              style: TextStyle(
                color: AppColors.darkBrown,
                fontSize: 16,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    ));
  }
}
