import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  final Category category;

  const CategoryGridItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle category item tap
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: category.color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Added this line
          children: [
            Expanded(
              child: Image.asset(
                category.flagImagePath,
                width: 20,
                height: 20,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              category.title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge, // Use an appropriate text style
              textAlign: TextAlign.center, // Added this line
            ),
          ],
        ),
      ),
    );
  }
}
