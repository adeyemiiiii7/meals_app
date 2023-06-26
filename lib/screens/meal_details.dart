import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/meal.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({super.key, required this.meal});

  final Meal meal;

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
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
