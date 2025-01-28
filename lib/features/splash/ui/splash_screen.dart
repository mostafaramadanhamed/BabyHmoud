import 'package:babyhmoud/core/helper/navigation_extension.dart';
import 'package:babyhmoud/core/routing/routes.dart';
import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2300),
      vsync: this,
    );

    _animation = Tween<double>(begin: 50.0, end: 200.0).animate(_controller);

    _controller.forward();

    // الانتقال إلى الشاشة التالية
    Future.delayed(const Duration(milliseconds: 2500), () {
      context.pushReplacementNamed(Routes.onboarding); // التنقل إلى الشاشة التالية
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryGold, // الخلفية الذهبية
      body: Stack(
        children: [
          // شعارات صغيرة على الخلفية
          Image.asset(
            width: double.infinity,
            height: double.infinity,  
            'assets/images/oback.png', // صورة مكررة للشعارات
            fit: BoxFit.cover,
          ),
          // المحتوى الرئيسي
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // الشعار الرئيسي
                    Container(
                      width: _animation.value,
                      height: _animation.value,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // نص اسم التطبيق
                    FadeTransition(
                      opacity: _controller.drive(
                        CurveTween(curve: Curves.easeIn),
                      ),
                      child:  Text(
                      "Luxury Baby Gifts & Clothes",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color:AppColors.lighterBrown,
                        fontStyle: FontStyle.italic,
                      ),
                    ), 
                    ),
                    const SizedBox(height: 10),
                   
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}