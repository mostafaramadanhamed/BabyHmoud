import 'package:babyhmoud/core/helper/navigation_extension.dart';
import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_filed.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              60.ph,
              // Sign In
              Text(
                "Create Account",
                style: TextStyles.font23SemiBold,
              ),
              12.ph,
              // hi welcome back, you've been missed
              Text(
                "Fill your information below or register \n with social media",
                style: TextStyles.font14RegularGrey,
                textAlign: TextAlign.center,
              ),
              32.ph,
              // Email
              const Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  'Name',
                ),
              ),
              8.ph,
              const AppTextFormField(hintText: 'Ahmed Mohamed'),
              20.ph,
              const Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  'Email',
                ),
              ),
              8.ph,
              const AppTextFormField(hintText: 'example@ex.com'),
              20.ph,
              // Password
              const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Password')),
              8.ph,
              AppTextFormField(
                hintText: '********',
                isObscureText: true,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.visibility_off_outlined),
                ),
              ),
              30.ph,
              
              // Sign up button
              AppTextButton(buttonText: 'Sign In', onPressed: () {}),
              30.ph,
              // Already have an account?
              Text(
                "ـــــــــــــــــ   Or sign up with   ــــــــــــــــــ",
                style: TextStyles.font14RegularGrey,
              ),
              30.ph,
              // Social Media Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/images/apple.png")),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/images/google.png")),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Container(
                      height: 60.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/images/facebook.png"),
                    ),
                  ),
                ],
              ),
              12.ph,
              //Already have an account?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                      onPressed: () {
                        context.pushNamed(Routes.login);
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                            color: AppColors.darkBrown,
                            decoration: TextDecoration.underline),
                      ))
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
