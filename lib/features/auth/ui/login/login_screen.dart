import 'package:babyhmoud/core/helper/navigation_extension.dart';
import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/routing/routes.dart';
import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:babyhmoud/core/theme/text_styles.dart';
import 'package:babyhmoud/core/widgets/app_text_button.dart';
import 'package:babyhmoud/core/widgets/app_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              100.ph,
              // Sign In
              Text(
                "Sign In",
                style: TextStyles.font23SemiBold,
              ),
              12.ph,
              // hi welcome back, you've been missed
              Text(
                "Hi, welcome back, you've been missed!",
                style: TextStyles.font14RegularGrey,
              ),
              50.ph,
              // Email
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
              20.ph,
              // Forgot Password
              const Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: AppColors.darkBrown,
                        decoration: TextDecoration.underline),
                  )),
              20.ph,
              // Sign In
              AppTextButton(buttonText: 'Sign In', onPressed: () {}),
              30.ph,
              // Don't have an account?
              Text(
                "ـــــــــــــــــ   Or sign in with   ــــــــــــــــــ",
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
              30.ph,
              // Don't have an account?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        context.pushNamed(Routes.register);
                      },
                      child: const Text(
                        "Sign Up",
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
