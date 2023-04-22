import 'package:cross_fit/core/utils/sizedbox_extension.dart';
import 'package:cross_fit/features/register/presentation/widgets/description_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/components/default_textfield.dart';

class InBodyInfoView extends StatelessWidget {
  const InBodyInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h, right: 15.w, left: 15.w),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const DescriptionItem(content: 'Required measurements'),
            20.heightSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  const DefaultTextField(
                    inputType: TextInputType.number,
                    title: 'Age',
                    maxLength: 2,
                  ),
                  const DefaultTextField(
                    inputType: TextInputType.number,
                    title: 'Weight',
                    suffixText: 'kg',
                    maxLength: 3,
                  ),
                   const DefaultTextField(
                    inputType: TextInputType.number,
                    secure: true,
                    title: 'Height',
                    suffixText: 'cm',
                    maxLength: 3,
                  ),
                   const DefaultTextField(
                    inputType: TextInputType.number,
                    secure: true,
                    title: 'Percent body fat',
                    suffixText: '%',
                     maxLength: 3,
                  ),
                   const DefaultTextField(
                    inputType: TextInputType.number,
                    secure: true,
                    title: 'Muscle mass',
                    suffixText: 'kg',
                     maxLength: 3,
                  ),
                   const DefaultTextField(
                    inputType: TextInputType.number,
                    secure: true,
                    title: 'Fat mass',
                    suffixText: 'kg',
                      maxLength: 3,
                  ),
                  const DefaultTextField(
                    inputType: TextInputType.number,
                    secure: true,
                    title: 'BMI',
                    suffixText: 'kg/m2',
                      maxLength: 3,
                  ),
                30.heightSpace,
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
