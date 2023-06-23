import 'package:flutter/material.dart';
import 'package:meals_app/category_grid_item.dart';
import 'package:meals_app/data/dummy_dart.dart';
import 'package:meals_app/screens/meals.dart';

import '../models/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    //pass contxt as a value
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => const MealsScreen(
        title: 'Titles...',
        meals: [],
      ),
    ));
    //Navigator.push(context, Route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pick your category"),
        ),
        body: GridView(
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
                  _selectCategory(context);
                },
                //  onselectCategory: () {},
              )
          ],
        ));
  }
}
