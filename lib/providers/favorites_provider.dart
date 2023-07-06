import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';

class FavouriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavouriteMealsNotifier() : super([]);
  bool toggleMealFavouriteStatus(Meal meal) {
    final mealIsFavourite = state.contains(meal);
//state.where(meal) will check for where if the meal is favourite then excute apporpriate comman
    //where method on the state list to filter out the meal with a matching id. This creates a new list without the removed meal.
    if (mealIsFavourite) {
      //meal.id = meal.id is checking id the avaliable meals is not included in the toggle favourite status
      //m=>meal
      state.where((m) => m.id != meal.id).toList();
      // If mealIsFavourite is false, it means that the meal is not marked as a favorite. The code updates
      //  the state by creating a new list using the spread operator
      //  (...state) to retain the existing favorite meals and adding the new meal to the end of the list.
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favouriteMealsProvider =
    StateNotifierProvider<FavouriteMealsNotifier, List<Meal>>((ref) {
  return FavouriteMealsNotifier();
});
