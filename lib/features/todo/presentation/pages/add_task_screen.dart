import 'package:cross_fit/core/utils/sizedbox_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/default_button.dart';
import '../../../../core/components/default_textfield.dart';
import '../../../../core/utils/app_strings.dart';
import '../widgets/todo_app_bar.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TodoAppBar(
        title: AppStrings.addNewTask,
        isAddButtonVisible: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            const DefaultTextField(
              inputType: TextInputType.text,
              title: 'Task Name',
            ),
            15.heightSpace,
            Row(
              children: [
                const Expanded(
                  child: DefaultTextField(
                    inputType: TextInputType.text,
                    title: 'Date',
                  ),
                ),
                10.widthSpace,
                const Expanded(
                  child: DefaultTextField(
                    inputType: TextInputType.text,
                    title: 'Time',
                  ),
                ),
              ],
            ),
            15.heightSpace,
            const DefaultTextField(
              inputType: TextInputType.multiline,
              title: 'Description',
            ),
            25.heightSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: DefaultButton(
                title: 'Add Task',
                height: 40.h,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
