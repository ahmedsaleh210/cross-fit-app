import 'package:cross_fit/core/utils/sizedbox_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manager/todo_cubit.dart';
import '../widgets/todo_app_bar.dart';
import '../widgets/todo_container.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => TodoCubit(),
        child: Scaffold(
            appBar: const TodoAppBar(),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => const TodoContainer(),
                      separatorBuilder: (context, index) => 10.heightSpace,
                      itemCount: 10),
                      10.heightSpace,
                  
                ],
              ),
            )));
  }
}
