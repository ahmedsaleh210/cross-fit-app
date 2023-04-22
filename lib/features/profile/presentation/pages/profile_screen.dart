import 'package:cross_fit/features/profile/data/models/dummy_data.dart';
import 'package:cross_fit/features/profile/presentation/manager/profile_cubit.dart';
import 'package:cross_fit/features/profile/presentation/widgets/avatar_item.dart';
import 'package:cross_fit/features/profile/presentation/widgets/blurred_image.dart';
import 'package:cross_fit/features/profile/presentation/widgets/list_tile_item.dart';
import 'package:cross_fit/features/profile/presentation/widgets/rounded_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cross_fit/injector.dart' as di;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<ProfileCubit>(),
      child: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          String imageUrl =
              'https://i.insider.com/586c15f1ee14b6ce348b5f7e?width=889&format=jpeg';
          return SafeArea(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                BlurredImage(imageUrl: imageUrl),
                Positioned(
                    top: 30.h,
                    child: AvatarItem(
                      imageUrl: imageUrl,
                    )),
                Positioned(
                  top: 160.h,
                  child: RoundedBody(
                    child: Padding(
                        padding:
                            EdgeInsets.only(top: 15.h, left: 25.w, right: 25.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                                  10,
                                  (index) => ListTileItem(
                                      title: profileData[index].title,
                                      value: profileData[index].value))
                              .map((e) => Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 11.h),
                                    child: e,
                                  ))
                              .toList(),
                        )),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
