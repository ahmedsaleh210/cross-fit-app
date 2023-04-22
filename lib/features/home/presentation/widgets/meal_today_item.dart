import 'package:cross_fit/core/components/amount_container.dart';
import 'package:cross_fit/core/components/diet_image_item.dart';
import 'package:cross_fit/core/utils/sizedbox_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/app_text.dart';
import '../../../../core/styles/colors/colors.dart';

class MealTodayItem extends StatelessWidget {
  const MealTodayItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.w),
      child: Container(
        height: 128.h,
        width: 230.w,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: AppColors.kDarkBlack,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(12.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: AppText('Break fast', fontSize: 10.sp, fontWeight: FontWeight.bold)),
                     const AmountContainer(300),
                    ],
                  ),
                  15.heightSpace,
                  Expanded(
                    child: Row(
                        children: List.generate(2, (index) => Expanded(
                          child: Column(
                            children: [
                              const DietImageItem(imageUrl: 'https://images.everydayhealth.com/images/apples-101-about-1440x810.jpg'),
                              8.heightSpace,
                              AppText('Apple', fontSize: 10.sp, fontWeight: FontWeight.bold),
                            ],
                          ),
                        ),
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
