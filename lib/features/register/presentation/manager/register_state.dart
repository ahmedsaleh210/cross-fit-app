part of 'register_cubit.dart';

abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class ChangePage extends RegisterState {}

class RegisterGenderSelected extends RegisterState {}

class RegisterTrainingGoalSelected extends RegisterState {}