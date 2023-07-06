import 'package:flutter/material.dart';
import 'package:meals_app/screens/meal_details.dart';
import 'package:meals_app/widgets/meal_item.dart';

import '../models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
    //required this.onToggleFavourite
  });

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealDetails(
          meal: meal,
          //    onToggleFavourite: onToggleFavourite,
        ),
      ),
    );
  }

  final String? title;
  final List<Meal> meals;
  //final void Function(Meal meal) onToggleFavourite;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '....nothing here!',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
        const SizedBox(height: 16),
        // Text(
        //   'Select a different category!',
        //   style: Theme.of(context).textTheme.bodyLarge!.copyWith(
        //         color: Theme.of(context).colorScheme.onBackground,
        //       ),
      ],
    ));
    //);
    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealItem(
          meal: meals[index],
          onselectMeal: (meal) {
            selectMeal(context, meal);
          },
        ),
      );
    }
    if (title == null) {
      return content;
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: content);
  }
}
