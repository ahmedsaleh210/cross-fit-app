import 'package:cross_fit/core/utils/sizedbox_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/app_text.dart';
import '../../../../core/components/diet_image_item.dart';
import '../../../../core/styles/colors/colors.dart';

class BuildMealItem extends StatelessWidget {
  const BuildMealItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DietImageItem(
              imageUrl:
                  'https://images.everydayhealth.com/images/apples-101-about-1440x810.jpg',
              width: 65.w,
            ),
            15.widthSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText('Apple', fontSize: 13.sp, fontWeight: FontWeight.bold),
                5.heightSpace,
                Row(
                    children: List.generate(
                        3, (index) => _mealQuantities('Carbs', 200)))
              ],
            ),
          ],
        )
      ],
    );
  }

  _mealQuantities(String title, double value) {
    return SizedBox(
      width: 70.w,
      child: Text.rich(TextSpan(
          style: TextStyle(fontSize: 10.sp, color: AppColors.kGrey),
          children: [
            TextSpan(text: '$title: '),
            TextSpan(
                text: '${value.floor()}g',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppColors.kGreen))
          ])),
    );
  }
}
