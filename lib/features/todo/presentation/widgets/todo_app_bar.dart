import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/app_text.dart';
import '../../../../core/utils/app_strings.dart';

class TodoAppBar extends StatelessWidget with PreferredSizeWidget {
  const TodoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70.h,
      title: AppText(
        AppStrings.todoList,
        fontSize: 30.sp,
        fontWeight: FontWeight.w500,
      ),
      centerTitle: true,
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(70.h);
}
