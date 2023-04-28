import 'package:auto_size_text/auto_size_text.dart';
import 'package:cross_fit/core/utils/sizedbox_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/diet_image_item.dart';
import '../../../../core/styles/colors/colors.dart';
import '../../data/models/meal_model.dart';
import '../../utils/diet_utils.dart';

class BuildMealItem extends StatelessWidget {
  final MealModel meal;
  const BuildMealItem({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<NutritionalItem> nutritionalItems = [
      NutritionalItem(
        title: 'Sodium',
        value: meal.calories,
      ),
      NutritionalItem(
        title: 'Protein',
        value: meal.protein,
      ),
      NutritionalItem(
        title: 'Cholesterol',
        value: meal.fat,
      ),
    ];
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DietImageItem(
              imageUrl: meal.image,
              width: 65.w,
            ),
            15.widthSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  meal.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                5.heightSpace,
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        nutritionalItems.length,
                        (index) => _mealQuantities(
                            nutritionalItems[index].title,
                            nutritionalItems[index].value)))
              ],
            ),
          ],
        )
      ],
    );
  }

  _mealQuantities(String title, double value) {
    return Text.rich(
      textAlign: TextAlign.left, // set textAlign to the TextSpan widget
      TextSpan(
        style: TextStyle(
          color: AppColors.kGrey,
          fontSize: 10.sp,
        ),
        children: [
          TextSpan(text: '$title: '),
          TextSpan(
            text: '${value.floor()}g',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.kGreen,
            ),
          ),
        ],
      ),
    );
  }
}
