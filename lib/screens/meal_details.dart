import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/providers/favorites_provider.dart';

import '../models/meal.dart';
import 'package:meals_app/providers/meal_provider.dart';

class MealDetails extends ConsumerWidget {
  const MealDetails({
    super.key,
    required this.meal,
    //   required this.onToggleFavourite
  });

  final Meal meal;
  //final void Function(Meal meal) onToggleFavourite;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(
            onPressed: () {
              final wasAdded = ref
                  .read(favouriteMealsProvider.notifier)
                  .toggleMealFavouriteStatus(meal);

              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(wasAdded
                      ? 'Meal added as a favourite'
                      : 'meal removed from favourite.')));
            },
            icon: const Icon(Icons.star),
          ),
        ],
      ),
      body: ListView(
        children: [
          Image.network(
            meal.imageUrl,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 14),
          Text(
            'Ingredients',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 11),
          for (final ingredient in meal.ingredients)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '• ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      ingredient,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground),
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 11),
          Text(
            'Steps',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 11),
          for (int i = 0; i < meal.steps.length; i++)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 8, 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${i + 1}. ',
                    style: GoogleFonts.notoSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      meal.steps[i],
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(meal.title),
//       ),
//       body: ListView(
//         children: [
//           Image.network(
//             meal.imageUrl,
//             height: 300,
//             width: double.infinity,
//             fit: BoxFit.cover,
//           ),
//           const SizedBox(height: 14),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Text(
//               'Ingredients',
//               style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                     color: Theme.of(context).colorScheme.primary,
//                     fontWeight: FontWeight.bold,
//                   ),
//             ),
//           ),
//           const SizedBox(height: 14),
//           for (final ingredient in meal.ingredients)
//             ListTile(
//               leading: Icon(Icons.circle,
//                   color: Theme.of(context).colorScheme.primary),
//               title: Text(
//                 ingredient,
//                 style: TextStyle(
//                     color: Theme.of(context).colorScheme.onBackground),
//               ),
//             ),
//           const SizedBox(height: 18),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Text(
//               'Steps',
//               style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                     color: Theme.of(context).colorScheme.primary,
//                     fontWeight: FontWeight.bold,
//                   ),
//             ),
//           ),
//           const SizedBox(height: 14),
//           for (final step in meal.steps)
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//               child: ListTile(
//                 leading: Icon(Icons.circle,
//                     color: Theme.of(context).colorScheme.primary),
//                 title: Text(
//                   step,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: Theme.of(context).colorScheme.onBackground),
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }