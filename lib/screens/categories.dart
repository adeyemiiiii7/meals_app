import 'package:flutter/material.dart';
import 'package:meals_app/widgets/category_grid_item.dart';
import 'package:meals_app/data/dummy_dart.dart';
import 'package:meals_app/screens/meals.dart';

import '../models/category.dart';
import '../models/meal.dart';
//import '../models/meal.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen(
      {super.key,
      //  required this.onToggleFavourite,
      required this.avaliableMeals});

  final List<Meal> avaliableMeals;

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

// State objects in Flutter represent the current state of a widget.
// They hold data that can change over time and trigger a rebuild of the UI when the data changes.
class _CategoriesScreenState extends State<CategoriesScreen>
    with SingleTickerProviderStateMixin {
  //extend with SingleTickerProviderStateMixin >= for only one animation controller
  //extend with TickerProviderStateMixin >= for multiple animation x=controller
  //your animation must be working with your sate object because it works behind the scene
  // final void Function(Meal meal) onToggleFavourite;

  late AnimationController _animatorController;
  void initState() {
    super.initState();
    _animatorController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );
  }

  @override
  void dispose() {
    _animatorController.dispose();
    super.dispose();
  }

  void _selectCategory(BuildContext context, Category category) {
    final selectedMeals = widget.avaliableMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          title: category.title,
          meals: selectedMeals,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //     appBar: AppBar(
    //       title: const Text("Pick your category"),
    //     ),
    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      children: [
        for (final category in availableCategories)
          CategoryGridItem(
            category: category,
            onselectCategory: () {
              _selectCategory(context, category);
            },
            //  onselectCategory: () {},
          )
      ],
    );
  }
}
