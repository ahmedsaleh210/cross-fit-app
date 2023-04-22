import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routes/app_router.dart';

part 'diet_state.dart';

class DietCubit extends Cubit<DietState> {
  DietCubit() : super(DietInitial());
  static DietCubit get(context) => BlocProvider.of(context);
  int currentDateIndex = 0;

  void changeCurrentDateIndex(int index) {
    if(currentDateIndex == index) return;
    currentDateIndex = index;
    emit(DietDateChanged());
  }

  void goToDietDetailsScreen(BuildContext context, DietCubit myCubit)
  {
    Navigator.pushNamed(context, Routes.dietDetailsRoute,arguments: myCubit);
  }
}
