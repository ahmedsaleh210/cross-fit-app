import 'dart:developer';

import 'package:cross_fit/core/components/app_text.dart';
import 'package:cross_fit/core/utils/sizedbox_extension.dart';
import 'package:cross_fit/features/home/presentation/manager/home_cubit.dart';
import 'package:cross_fit/features/home/presentation/widgets/meal_today_item.dart';
import 'package:cross_fit/features/home/presentation/widgets/shimmer_loading_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_strings.dart';
import '../widgets/bar_chart.dart';
import '../widgets/circular_chart.dart';
import '../../../../core/components/custom_appbar.dart';
import 'package:cross_fit/injector.dart' as di;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      di.sl<HomeCubit>()
        ..changeLoading(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        buildWhen: (previous, current) {
          if (current is DataLoaded || current is DataLoading) {
            return false;
          }
          return true;
        },
        builder: (context, state) {
          log('test');
          final cubit = HomeCubit.get(context);
          return Scaffold(
              appBar: const CustomAppBar(),
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppText(AppStrings.summary,
                          fontSize: 20, fontWeight: FontWeight.bold),
                      const CircularChart(),
                      12.heightSpace,
                      SizedBox(
                        height: 200.h,
                        child: const BarChart(),
                      ),
                      12.heightSpace,
                      const AppText(AppStrings.todayMeals,
                          fontSize: 20, fontWeight: FontWeight.bold),
                      12.heightSpace,
                      BlocBuilder<HomeCubit, HomeState>(
                        buildWhen: (previous, current) {
                          if (current is DataLoaded) {
                            return true;
                          }
                          return false;
                        },
                        builder: (context, state) {
                          return SizedBox(
                            height: 135.h,
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                if (cubit.isLoading) {
                                  return const ShimmerLoadingItem();
                                } else {
                                  return const MealTodayItem();
                                }
                              },
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                            ),
                          );
                        },
                      ),
                      75.heightSpace,
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
