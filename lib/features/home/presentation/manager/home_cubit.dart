import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  bool isLoading = true;
  void changeLoading() {
    if(isClosed) return;
    emit(DataLoading());
    Future.delayed(const Duration(seconds: 5), () {
      if(isClosed) return;
      isLoading = false;
      emit(DataLoaded());
    });
  }
}
