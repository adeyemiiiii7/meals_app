import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:meals_app/screens/categories.dart';
//import 'package:meals_app/screens/categories.dart';
import 'package:meals_app/screens/tabs.dart';
//import 'package:meals_app/screens/meals.dart';

//import 'data/dummy_dart.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(120, 123, 171, 219),
  ),
  textTheme: GoogleFonts.poppinsTextTheme(),
);

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, theme: theme,
      home: const TabsScreen(),
      // const CategoriesScreen()

      // MealsScreen(
      //   title: 'Some Category',
      //   meals: dummyMeals,
      // ),
    );
  }
}
