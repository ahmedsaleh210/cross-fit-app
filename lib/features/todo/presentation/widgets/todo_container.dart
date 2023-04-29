import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/app_text.dart';
import '../../../../core/styles/colors/colors.dart';

class TodoContainer extends StatelessWidget {
  const TodoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
          color: AppColors.kDarkBlack, borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      color: AppColors.kGreen, shape: BoxShape.circle),
                  child: Padding(
                    padding: EdgeInsets.all(1.sp),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.zero,
                horizontalTitleGap: 0,
                title: AppText(
                  'Task name',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0.h),
              child: AppText(
                DateTime.now().toString(),
                color: AppColors.kGrey,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
