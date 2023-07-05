import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_dart.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/categories.dart';
import 'package:meals_app/screens/filters.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/screens/main_drawer.dart';
import 'dart:developer';

//naming the filters as aglobal variable to be accessed by selectedfilters in setstate
const IntialFilters = {
  Filter.LactoseFree: false,
  Filter.vegan: false,
  Filter.Vegetarian: false,
  Filter.glutenFree: false,
};

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  //a list map variable that will manage the state of the favourite b=icon
  final List<Meal> _favouriteMeals = [];
  //declare a variable that will store the selected filtered meals
  Map<Filter, bool> _selectedFilters = IntialFilters;
  // Filter.LactoseFree: false,
  // Filter.vegan: false,
  // Filter.Vegetarian: false,
  // Filter.glutenFree: false,

  void _showInfoMessgae(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void _toggleMealFavouriteStatus(Meal meal) {
    final isExisting = _favouriteMeals.contains(meal);

    if (isExisting) {
      setState(() {
        _favouriteMeals.remove(meal);
        _showInfoMessgae('Meal is no longer a favourite');
      });
    } else {
      setState(() {
        _favouriteMeals.add(meal);
        _showInfoMessgae('Marked as a favourite.');
      });
    }
  }

//0 for first page
//1 for the second page
  int _selectedPageIndex = 0;

  void _selectpage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
  // i used another navigator pop here because after you oprn the filter screen it and click the back icon it should go back to the category icon

//  void _setScreen(String identifier) {
//     Navigator.of(context).pop();
//     if (identifier == 'filters') {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(
//           builder: (ctx) => const FiltersScreen(),
//         ),
//       );
//     }
//no need for a back button you would be able too navigate to your previous screen

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      //ading a generic bracket to the push to specify what of values will be stored there
      final result = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (ctx) => FiltersScreen(
            currentFilters: _selectedFilters,
          ),
        ),
      );
      setState(() {
        _selectedFilters = result ?? IntialFilters;
        //?? helps you to chr=eck if the value should be null
      });

      // print(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    //using a where function(meal) helps to check dynically in a list
    final avaliableMeals = dummyMeals.where(
      (meal) {
        // Filtering meals based on selected filters
        // If the 'glutenFree' filter is enabled and the meal is not gluten-free, exclude it from the list
        if (_selectedFilters[Filter.glutenFree]! && !meal.isGlutenFree) {
          return false;
        }
        if (_selectedFilters[Filter.LactoseFree]! && !meal.isLactoseFree) {
          return false;
        }
        if (_selectedFilters[Filter.vegan]! && !meal.isVegan) {
          return false;
        }
        if (_selectedFilters[Filter.Vegetarian]! && !meal.isVegetarian) {
          return false;
        }
        return true;
        //.toList() at the end of where() converts the filtered meals from an iterable to a list,
        //making it more convenient to work with the data in various ways.
      },
    ).toList();
    Widget activePage = CategoriesScreen(
      onToggleFavourite: _toggleMealFavouriteStatus,
      avaliableMeals: avaliableMeals,
    );
    var activePageTitle = 'Categories';
    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(
        meals: _favouriteMeals,
        onToggleFavourite: _toggleMealFavouriteStatus,
      );
      activePageTitle = "Favourites";
    }
    return Scaffold(
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectpage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_outlined), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
        ],
      ),
    );
  }
}
