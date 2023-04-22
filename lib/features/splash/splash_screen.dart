import 'dart:async';

import 'package:cross_fit/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/routes/app_router.dart';
import '../../core/styles/colors/colors.dart';
import '../../core/utils/assets_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamedAndRemoveUntil(context, Routes.onBoardingRoute, (route) => false);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kMediumBlack,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImgAssets.splash,
                height: 200.h,
                width: 200.w,
              ),
              AppText(
                'CrossFit',
                color: AppColors.kGreen,
                fontSize: 35.sp,
                fontWeight: FontWeight.w700,
              )
            ],
          ),
        ));
  }
}
