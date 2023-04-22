import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/styles/colors/colors.dart';

class ShimmerLoadingItem extends StatelessWidget {
  const ShimmerLoadingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Shimmer.fromColors(
            baseColor: AppColors.kDarkBlack,
            highlightColor: AppColors.kGrey.withOpacity(0.5),
            child: Container(
              height: 128.h,
              width: 230.w,
              decoration: BoxDecoration(
                  color: AppColors.kGrey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)),
            )));
  }
}
