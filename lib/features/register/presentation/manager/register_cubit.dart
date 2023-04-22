import 'package:cross_fit/features/register/presentation/pages/page_views/inbody_info_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../../core/routes/app_router.dart';
import '../pages/page_views/choose_gender_view.dart';
import '../pages/page_views/training_goal_view.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  static RegisterCubit get(context) => BlocProvider.of(context);

  final RoundedLoadingButtonController registerBtnController =
      RoundedLoadingButtonController();
  //TODO REGISTER FUNCTION
  void navigateToRegisterDetails({required context, required RegisterCubit registerCubit}) {
    Future.delayed(const Duration(seconds: 2), () async {
      registerBtnController.success();
      await Future.delayed(const Duration(seconds: 1), () {});
      Navigator.pushNamed(context, Routes.registerDetailsRoute,
          arguments: registerCubit);
      Future.delayed(const Duration(milliseconds: 500), () {
        registerBtnController.reset();
      });
    });
  }

  //TODO REGISTER DETAILS FUNCTIONS
  final PageController pageController = PageController();

  List<Widget> registerDetailsViews = const [
    ChooseGenderView(),
    TrainingGoalView(),
    InBodyInfoView(),
  ];

  void nextPage(context) async {
    if (currentPage == registerDetailsViews.length - 1) {
      confirmRegister(context);
    } else {
      await pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
      emit(ChangePage());
    }
  }

  void confirmRegister(context)
  {
    Navigator.pushNamedAndRemoveUntil(context, Routes.loadingHomeRoute, (route) => false);
  }

  int currentPage = 0;

  void changePage(int index) {
    currentPage = index;
  }

  void previousPage() async {
    await pageController.previousPage(
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
    emit(ChangePage());
  }

  //TODO SELECT TRAINING GOAL FUNCTIONS
  int selectedTrainingGoal = 0;
  void selectTrainingGoal(int index) {
    selectedTrainingGoal = index;
    emit(RegisterTrainingGoalSelected());
  }

  //TODO SELECT GENDER FUNCTIONS
  int selectedGender = 0;
  void selectGender(int index) {
    selectedGender = index;
    emit(RegisterGenderSelected());
  }
}
