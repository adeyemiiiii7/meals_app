import 'package:flutter_riverpod/flutter_riverpod.dart';

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
