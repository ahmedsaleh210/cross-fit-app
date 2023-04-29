import 'package:cross_fit/core/utils/sizedbox_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/app_text.dart';
import '../../../../core/styles/colors/colors.dart';
import '../../../profile/presentation/widgets/blurred_image.dart';
import '../../../profile/presentation/widgets/rounded_body.dart';
import '../../data/models/meal_model.dart';
import '../widgets/gradient_circular_progress.dart';
import '../widgets/meal_list_tile.dart';

class MealScreen extends StatelessWidget {
  final MealModel mealModel;
  const MealScreen({super.key, required this.mealModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        BlurredImage(imageUrl: mealModel.image),
        Align(
          alignment: Alignment.topLeft,
          child: SafeArea(
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 27.sp,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ),
        Positioned(
          top: 240.h,
          child: RoundedBody(
            child: Padding(
                padding: EdgeInsets.only(top: 15.h, left: 25.w, right: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      mealModel.title,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    15.heightSpace,
                    MealListTile(
                      title: 'Calories',
                      value: mealModel.calories,
                      unit: 'kcal',
                    ),
                    10.heightSpace,
                    MealListTile(
                      title: 'Protein',
                      value: mealModel.protein,
                      unit: 'g',
                    ),
                    45.heightSpace,
                    Row(
                        children: List.generate(
                            2,
                            (index) => Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    child: Container(
                                      height: 150.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColors.kDarkBlack,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.h),
                                        child: Column(children: [
                                          AppText(
                                            'Protein',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.withOpacity(0.8),
                                          ),
                                          AppText(
                                            '1.0/100',
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.kGreen,
                                          ),
                                          12.heightSpace,
                                          GradientCircularProgressIndicator(
                                            radius: 35.r,
                                            value: 0.5,
                                            gradient: AppColors.pinkGradient,
                                            strokeWidth: 7,
                                          )
                                        ]),
                                      ),
                                    ),
                                  ),
                                )))
                  ],
                )),
          ),
        )
      ],
    ));
  }
}
