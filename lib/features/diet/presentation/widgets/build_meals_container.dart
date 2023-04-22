import 'package:cross_fit/core/utils/sizedbox_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/app_text.dart';
import '../../../../core/styles/colors/colors.dart';
import 'build_meal_item.dart';

class BuildMealsContainer extends StatelessWidget {
  final String title;
  final int mealsCount;
  const BuildMealsContainer({Key? key,required this.title,this.mealsCount=3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.kGreen,
              radius: 5.sp,
            ),
            5.widthSpace,
            AppText(
              title,
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
            ),
          ],
        ),
        5.heightSpace,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.kDarkBlack,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 15.w, vertical: 10.h),
              child: Column(
                  children: List.generate(mealsCount, (index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: const BuildMealItem(),
                  ),)
              )
          ),
        ),
      ],
    );
  }
}
