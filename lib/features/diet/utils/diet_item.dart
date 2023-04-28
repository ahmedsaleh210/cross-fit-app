import '../data/models/meal_model.dart';

class DietItem {
  final String title;
  final List<MealModel> meals;
  DietItem({required this.title, required this.meals});
}
