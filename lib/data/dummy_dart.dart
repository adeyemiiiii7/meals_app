import 'package:flutter/material.dart';

import '../models/meal.dart';
import '/models/category.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'Italian',
    flagImagePath: 'assets/images/italy.png',
  ),
  Category(
    id: 'c2',
    title: 'Nigerian',
    flagImagePath: 'assets/images/nigerian.png',
  ),
  Category(
    id: 'c3',
    title: 'American',
    // color: Colors.orange,
    flagImagePath: 'assets/images/america.png',
  ),
  Category(
    id: 'c4',
    title: 'German',
    //color: Color.fromARGB(255, 132, 67, 7),
    flagImagePath: 'assets/images/german.png',
  ),
  Category(
    id: 'c5',
    title: 'Japenese',
    //color: Colors.blue,
    flagImagePath: 'assets/images/japan.png',
  ),
  Category(
    id: 'c6',
    title: 'British',
    // color: Colors.lightBlue,
    flagImagePath: 'assets/images/british.png',
  ),
  Category(
    id: 'c7',
    title: 'Koreans',
    //color: Colors.lightGreen,
    flagImagePath: 'assets/images/korea.png',
  ),
  Category(
    id: 'c8',
    title: 'French',
    // color: Color.fromARGB(255, 31, 71, 139),
    flagImagePath: 'assets/images/france.png',
  ),
  Category(
    id: 'c9',
    title: 'Summer',
    //color: Color.fromARGB(255, 233, 200, 15),
    flagImagePath: 'assets/images/summer.png',
  ),
  Category(
    id: 'c10',
    title: 'Mexican',
    // color: Color.fromARGB(255, 176, 37, 37),
    flagImagePath: 'assets/images/mexican.png',
  ),
  Category(
    id: 'c11',
    title: 'Indian',
    // color: Colors.teal,
    flagImagePath: 'assets/images/indian.png',
  ),
  Category(
    id: 'c12',
    title: 'Moroccans',
    //  color: Color.fromARGB(255, 214, 45, 45),
    flagImagePath: 'assets/images/morocco.png',
  ),
];
const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Jollof Rice',
     affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://www.bellanaijastyle.com/wp-content/uploads/2021/08/thumbnail_1280X720-2021-08-13T101459.614.jpg',
    duration: 60,
    ingredients: [
      '5 medium sized Roma tomatoes, roughly chopped',
'1 red bell pepper, roughly chopped',
'1 medium sized onion, roughly chopped, set aside',
'2 scotch bonnet peppers (habanero peppers as they are sometimes called)',
'1/4 cup of groundnut oil',
'3 tbsp tomato paste',
'2 cups of parboiled rice',
'2 1/2 cups of chicken stock',
'1 tsp salt to taste',
'1/2 tsp curry powder',
'1/2 tsp thyme',
'1 tsp All purpose seasoning',
'1 Knorr stock cube',
'3 bay leaves',
'Water, as needed',
    ],
    steps: [
  'Blend tomatoes, red pepper, and scotch bonnet peppers in a food processor or blender for about 45 seconds until well blended.',
  'Heat oil in a medium-sized pot over medium-high heat. Add the onions and fry until golden brown.',
  'Add tomato paste to the pot and fry for 2-3 minutes.',
  'Add the blended tomato mixture (reserving about 1/4 cup) to the pot and fry with the onions and tomato paste for about 30 minutes, stirring consistently.',
  'Reduce heat to medium, and add chicken stock, salt, curry powder, thyme, all-purpose seasoning, and the Knorr stock cube. Boil for 10 minutes.',
  'Add the parboiled rice to the pot and mix well with the tomato stew. If needed, add water to ensure the rice is level with the tomato mixture/chicken stock.',
  'Add bay leaves, cover the pot, and cook on medium to low heat for 15-30 minutes.',
  'When the liquid has almost dried up, add the reserved tomato stew, cover, and cook for another 5-10 minutes until the liquid has completely dried up.',
  'Turn off the heat, mix thoroughly, and your Jollof Rice is ready to be eaten!',
],
 isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
    ],
    title: 'FUFU AND EGUSI',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl: 'https://api.vip.foodnetwork.ca/wp-content/uploads/2022/02/Egusi_Soup_and_Pounded_Yam_003.jpg?w=640&quality=75',
    duration: 75,
    ingredients: [ 
       '2 lb boneless goat meat, cut into bite-size pieces',
  'Dried fish, to taste',
  'Coarse salt',
  '2 medium onions, roughly chopped',
  '4 maggi cubes or other chicken bouillon cubes',
  '3 cups water',
  '4 fresh Jamaican chile peppers',
  'Dried shrimp, to taste',
  'Dried crayfish, to taste',
  '2 cups melon seed',
  '1 package frozen spinach, thawed (340 g)',
  '1/2 cup palm oil',
  '1 cup vegetable oil',
  'Pounded Yam',
  '2 cups purple yam flour',
  '2 cups water',
],
 steps :[
  'Put the goat meat in a medium pot.',
  'Rinse the dried fish and add it to the pot.',
  'Add 1 onion, salt to taste, and 2 maggi cubes.',
  'Add 3 cups water and bring to a boil on high heat. Reduce heat and simmer for 30 minutes.',
  'Meanwhile, put the chile peppers and the remaining onion in a blender and puree.',
  'Scrape the onion pepper mixture into a bowl and set aside.',
  'Put the shrimp, crayfish, and melon seed in a clean blender and blend until a powder forms.',
  'Put it in a bowl and set aside.',
  'Squeeze the excess liquid from the spinach and set aside.',
  'After 30 minutes, check the meat.',
  'If it is still tough, add more water to the pot so that the cooking liquid covers the meat.',
  'Continue to cook until the goat is fork-tender, add the onion pepper mixture, and cook for 15 minutes.',
  'Reduce heat to medium and add the melon seed mixture.',
  'Cook for 30 minutes longer and add the spinach, the oils, and the 2 remaining maggi cubes.',
  'Cover it and cook for another 15 minutes.',
  'Bring 1 3/4 cups water to a boil on high heat.',
  'Turn the heat to medium and stir in the pounded yam flour.',
  'Keep stirring until it is smooth and soft. If it is really thick, add some hot water. It will have a similar texture to polenta.',
  'Serve the pounded yam on plates and serve with bowls of egusi soup.',
  'Dip the pounded yam into the egusi soup.',
],
 isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c2',
    ],
    title: 'Meat-Pie Snack'
  )

    
  )


    ]
  )