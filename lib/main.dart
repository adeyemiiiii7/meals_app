import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/screens/categories.dart';
//import 'package:meals_app/screens/meals.dart';

//import 'data/dummy_dart.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(120, 109, 177, 246),
  ),
  textTheme: GoogleFonts.poppinsTextTheme(),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        home: const CategoriesScreen()
        // MealsScreen(
        //   title: 'Some Category',
        //   meals: dummyMeals,
        // ),
        );
  }
}
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