import 'package:flutter/material.dart';
import 'package:meals_app/widgets/category_grid_item.dart';
import 'package:meals_app/data/dummy_dart.dart';
import 'package:meals_app/screens/meals.dart';

import '../models/category.dart';
import '../models/meal.dart';
//import '../models/meal.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.onToggleFavourite});

  final void Function(Meal meal) onToggleFavourite;
  void _selectCategory(BuildContext context, Category category) {
    final selectedMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          onToggleFavourite: onToggleFavourite,
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
