import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:cross_fit/injector.dart' as di;

import '../../../../core/routes/app_router.dart';
import '../../../register/presentation/manager/register_cubit.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);

  final RoundedLoadingButtonController loginBtnController =
      RoundedLoadingButtonController();

  void login() {
    loginBtnController.start();
    Future.delayed(const Duration(seconds: 3), () {
      loginBtnController.success();
    });
  }

  void navigateToRegister(context) {
    final registerCubit = di.sl<RegisterCubit>();
    Navigator.pushNamed(context, Routes.registerRoute,
        arguments: registerCubit);
  }
}
