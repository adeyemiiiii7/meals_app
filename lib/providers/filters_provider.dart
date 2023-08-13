import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/meal_provider.dart';

import 'filters_provider.dart';

enum Filter { glutenFree, LactoseFree, Vegetarian, vegan }

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  //declare a map where each filter is set to false intially
  FiltersNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.LactoseFree: false,
          Filter.Vegetarian: false,
          Filter.vegan: false,
        });
  void setFilters(Map<Filter, bool> chosenFilters) {
    state = chosenFilters;
  }
// setFilters can directly mutate the state because it assigns the
// chosenFilters map to the state variable. This operation
// replaces the entire state with the new chosen filters.

// On the other hand, the second function setFilter cannot directly
//  mutate the state because it only needs to update
//  a single filter within the state map.
  void setFilter(Filter filter, bool isActive) {
    //state[filter] = isActive// now allowed => mutating state
    state = {
      //...copies the existingkey  map pairs into a new map
      ...state,
      filter: isActive,
    };
  }
}

// final FiltersNotifier = StateNotifierProvider< FiltersNotifier, Map<Filter, bool>>(
//   (ref) => FiltersNotifier(),
// );

final filtersProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>((ref) {
  return FiltersNotifier();
});

final filteredMealsProvider = Provider((ref) {
  final meals = ref.watch(mealsProvider);
  final activeFilters = ref.watch(filtersProvider);

  return meals.where(
    (meal) {
      if (activeFilters[Filter.glutenFree]! && !meal.isGlutenFree) {
        return false;
      }
      if (activeFilters[Filter.LactoseFree]! && !meal.isLactoseFree) {
        return false;
      }
      if (activeFilters[Filter.vegan]! && !meal.isVegan) {
        return false;
      }
      if (activeFilters[Filter.Vegetarian]! && !meal.isVegetarian) {
        return false;
      }
      return true;
      //.toList() at the end of where() converts the filtered meals from an iterable to a list,
      //making it more convenient to work with the data in various ways.
    },
  ).toList();
});
