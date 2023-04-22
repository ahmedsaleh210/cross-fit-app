import 'package:cross_fit/core/api/dio_consumer.dart';
import 'package:cross_fit/features/crossfit_layout/presentation/manager/cross_fit_layout_cubit.dart';
import 'package:cross_fit/features/diet/presentation/manager/diet_cubit.dart';
import 'package:cross_fit/features/home/presentation/manager/home_cubit.dart';
import 'package:cross_fit/features/login/presentation/manager/login_cubit.dart';
import 'package:cross_fit/features/onboarding/presentation/manager/onboarding_cubit.dart';
import 'package:cross_fit/features/profile/presentation/manager/profile_cubit.dart';
import 'package:cross_fit/features/register/presentation/manager/register_cubit.dart';
import 'package:get_it/get_it.dart';

import 'core/api/api_consumer.dart';

final sl = GetIt.instance;


//Dependency Injection Container
Future<void> init() async {
  //TODO Cubits
  sl.registerFactory<OnBoardingCubit>(() => OnBoardingCubit());
  sl.registerFactory<LoginCubit>(() => LoginCubit());
  sl.registerFactory<RegisterCubit>(() => RegisterCubit());
  sl.registerFactory<CrossFitLayoutCubit>(() => CrossFitLayoutCubit());
  sl.registerFactory<HomeCubit>(() => HomeCubit());
  sl.registerFactory<DietCubit>(() => DietCubit());
  sl.registerFactory<ProfileCubit>(() => ProfileCubit());

  //TODO Repositories

  //TODO Data Sources

  //TODO Core
  //sl.registerLazySingleton<ApiConsumer>(() => DioConsumer());
}