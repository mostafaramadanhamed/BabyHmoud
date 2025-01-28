import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // app logo
          Image.asset(
            'assets/images/logo.png',
            height: 300.h,
          ),
          45.ph,
          // login button
          AppTextButton(
            buttonText: 'Login',
            onPressed: () {
              // navigate to login screen
            },
          ),
          20.ph,
          // register button
          AppTextButton(
            buttonText: 'Register',
            onPressed: () {
              // navigate to register screen
            },
          ),
          20.ph,
          // login as guest button
          AppTextButton(
            buttonText: 'Login as guest',
            onPressed: () {
              // navigate to home screen
            },
          ),
          20.ph
        ],
      ),
    ));
  }
}
