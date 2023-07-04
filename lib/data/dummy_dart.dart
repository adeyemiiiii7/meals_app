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
    imageUrl:
        'https://www.bellanaijastyle.com/wp-content/uploads/2021/08/thumbnail_1280X720-2021-08-13T101459.614.jpg',
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
    imageUrl:
        'https://api.vip.foodnetwork.ca/wp-content/uploads/2022/02/Egusi_Soup_and_Pounded_Yam_003.jpg?w=640&quality=75',
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
    steps: [
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
    title: 'Meat-Pie Snack',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://www.foodnetwork.com/content/dam/images/food/fullset/2022/06/03/0/FNK_Nigerian-Meat-Pies_H1_s4x3.jpg',
    duration: 140,
    ingredients: [
      '4 cups (500g) all-purpose flour',
      '200g cold Butter, cubed',
      '2 Eggs',
      '1 teaspoon Salt',
      '1 tablespoon sugar',
      '1 teaspoon baking powder',
      '1/4 cup (60ml) cold water',
      '3/4 pound (350g) Ground beef',
      '1 Potato, peeled and diced into small cubes',
      '1 Large Onion, chopped',
      '1 Large Carrot, peeled and diced',
      '1 cup (240ml) Water/beef broth',
      'Salt to taste',
      'Pepper to taste',
      '1 teaspoon Thyme',
      '2 tablespoons flour',
      '2 tablespoons Oil',
      '1 egg for brushing',
    ],
    steps: [
      'In a large bowl, mix together flour, sugar, salt, and baking powder to make the pastry.',
      'Add cubed butter to the flour mixture and rub it until you get a crumbly texture.',
      'Beat 2 eggs with cold water and add it to the flour mixture. Mix until dough is formed.',
      'Wrap the dough with cling film and refrigerate for 30 minutes.',
      'In a large pan, heat oil and sauté onions until translucent. Add diced carrots and cook for a few minutes.',
      'Add the ground beef to the pan and cook, breaking it apart, until no longer pink.',
      'Season with salt, pepper, thyme, and flour. Stir and cook for 2 minutes.',
      'Add cubed potatoes and pour in the water/broth. Stir well.',
      'Bring to a simmer and cook for 15 minutes until the mixture thickens. Set aside to cool.',
      'Preheat the oven to 350F (175C).',
      'Divide the dough into 2-4 pieces and roll each piece to 1/8-inch thickness.',
      'Cut out round shapes from the dough. Combine any leftover dough and roll it again to make more circles.',
      'Place 1-2 tablespoons of the meat mixture in the center of each dough circle.',
      'Brush the edges of the dough with water and fold it over the filling to seal.',
      'Poke the pies with a fork to create steam outlets while baking. Brush the pies with beaten egg.',
      'Bake for 25-30 minutes until golden. Cool slightly before serving.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c3',
      'c6',
    ],
    title: 'Classic Mac And Cheese',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI_08iT6kJT0cxhT8RviUIO6057Fz-nAfYxQ&usqp=CAU',
    duration: 25,
    ingredients: [
      '1 (8 ounce) box elbow macaroni',
      '¼ cup butter',
      '¼ cup all-purpose flour'
          '½ teaspoon salt',
      'ground black pepper to taste',
      '2 cups milk',
      '2 cups shredded Cheddar cheese'
    ],
    steps: [
      'Cook the macaroni until very firm. The macaroni should be too firm to eat right out of the pot. Drain.',
      'Beat the egg in a small bowl.',
      'Melt the butter in a large pot and sprinkle in the flour. Whisk together over medium-low heat. Cook the mixture for 5 minutes, whisking constantly. Don\'t let it burn.',
      'Pour in the milk, add the mustard, and whisk until smooth. Cook for 5 minutes until very thick. Reduce the heat to low.',
      'Take 1/4 cup of the sauce and slowly pour it into the beaten egg, whisking constantly to avoid cooking the egg. Whisk together until smooth.',
      'Pour the egg mixture into the sauce, whisking constantly. Stir until smooth.',
      'Add in the cheese and stir to melt. Add the salt, seasoned salt, and pepper. Taste the sauce, adding more salt and seasoned salt as needed. (Do not under-salt!)',
      'Pour in the drained, cooked macaroni and stir to combine. Serve immediately.',
      'Alternatively, pour into a buttered baking dish, top with extra cheese, and bake at 350˚F for 20 to 25 minutes, then serve.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c3'
          'c6',
      'c8',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c3'
          'c6'
          'c8',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://media.istockphoto.com/id/96430985/photo/pancakes.jpg?s=612x612&w=0&k=20&c=jB8amkXMUpobVZh9vlx1qJb-qk2oz-jZJIbH0O3wLO4=',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: ['c4'],
    title: 'Grilled Bratwurst',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    duration: 45,
    imageUrl:
        'https://www.foxvalleyfoodie.com/wp-content/uploads/2017/05/how-to-grill-brats.jpg',
    ingredients: [
      '6 bratwursts',
      '6 bratwurst buns',
      'desired toppings',
    ],
    steps: [
      'Preheat your grill for Medium heat (325-350 degrees F) for two-zone cooking.',
      'Place the bratwursts on the indirect side of the grill and cook for 15-18 minutes or until the internal temperature of the bratwurst reaches 150-155 degrees F. Turn occasionally to evenly cook the bratwurst.',
      'Transfer the brats to the direct heat side of the heat and grill for 1-2 minutes to cook the exterior casing.',
      'Place the buns slit side down on the grill and grill for a few seconds until they are crisp.',
      'Remove the buns and the bratwursts from the grill.',
      'Place a brat in a bun, and top with your preferred toppings (mustard and sauerkraut for me!).'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c11',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c5',
    ],
    title: 'Sushi',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.fifteenspatulas.com/wp-content/uploads/2016/06/Homemade-Sushi-1-250x250.jpg',
    duration: 30,
    ingredients: [
      '6 sheets sushi seaweed aka nori',
      '1 batch prepared sushi rice',
      '1/2 lb sashimi-grade raw salmon or desired raw fish of choice',
      '4 oz cream cheese sliced into strips',
      '1 avocado sliced',
      'soy sauce for serving',
    ],
    steps: [
      'Place the seaweed on a bamboo mat, then cover the sheet of seaweed with an even layer of prepared sushi rice. Smooth gently with a rice paddle.',
      'Layer salmon, cream cheese, and avocado on the rice, and roll it up tightly.',
      'Slice with a sharp knife, and enjoy right away with soy sauce.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c7',
    ],
    title: 'korean ramen',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://glebekitchen.com/wp-content/uploads/2018/08/koreanramentopcrop-768x914.jpg',
    duration: 50,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper, and Olive Oil',
      ' 2 large eggs'
          'green onions, enoki mushrooms, kimchi - whatever you like really',
      'the reserved chicken',
      'the Korean ramen broth',
      '4-5 oz Japanese ramen noodles - not the instant kind',
    ],
    steps: [
      'Bring a pot of chicken stock to a simmer over medium-low heat.',
      'Poach the chicken thighs in the simmering stock until they reach an internal temperature of 175F (about 25 minutes).',
      'Remove the chicken thighs and set aside to cool. Once cooled, pull the chicken meat off the bones into bite-sized chunks.',
      'Strain the stock if desired, then return it to the pot.',
      'In a small bowl, combine gochujang, doenjang (if using), miso, and gochugaru. Add a bit of hot chicken stock to the bowl and stir to combine.',
      'Add the gochujang stock mixture to the remaining stock in the pot. Stir in the fish sauce and adjust salt if needed. The broth is ready.',
      'In a saucepan, bring water to a boil and cook the large eggs for 6 minutes 30 seconds (or 7 minutes 30 seconds for extra large eggs).',
      'Transfer the boiled eggs to cold or ice water to chill, then peel and set aside.',
      'Cut the eggs in half lengthwise right before serving.',
      'Bring the Korean ramen broth to a boil. Add the noodles and cook until done according to the package instructions.',
      'Return the pulled chicken to the broth to warm through. Slice the eggs lengthwise.',
      'Ladle the broth, noodles, and chicken into a bowl. Top with sliced eggs, green onions, enoki mushrooms, and kimchi.',
      'Serve with extra gochugaru for those who prefer more heat.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c12',
    ],
    title: 'traditional moroccan couscous',
    affordability: Affordability.pricey,
    complexity: Complexity.hard,
    imageUrl:
        'https://i0.wp.com/koshercowboy.com/wp-content/uploads/2017/10/couscous-Photo-source-sahara-experience.jpg?w=747&ssl=1',
    duration: 120,
    ingredients: [
      '32 oz couscous (dry, do not use instant couscous)',
      '13 cups water',
      '½ cup oil (+ 1 tbsp)',
      '½ tsp pepper',
      '1 tablespoon salt',
      '30 threads saffron (or 1-½ tsp)',
      '1 butternut or acorn squash (2 lb, pumpkin or gourd, peeled and diced)',
      '5 turnips (peeled and halved)',
      '1 bunch cilantro (rinsed and left whole)',
      '6 large carrots (peeled and halved lengthwise)',
      '6 medium tomatoes (peeled and diced)',
      '5 medium onions (peeled and quartered)',
      '8 oz chickpeas (dry)',
      '1 lb meat (shank bone or mutton, diced)'
    ],
    steps: [
      'Pre-soak the chickpeas overnight.',
      'The following day, drain and rinse them. Put the meat, onions, tomatoes, and chickpeas in the bottom half of the couscous pan (called a couscoussier). Add 1 teaspoon saffron, cilantro, 1 teaspoon salt, ½ teaspoon pepper, cover with 12 cups of water, add 1 tablespoon of oil, and cook at medium temperature.',
      'In the meantime, prepare the couscous by pouring it into a large colander and rinse it under running water, then drain it and set it aside for 15 minutes.',
      'Slowly add ½ cup oil and 10 threads (½ tsp) saffron while stirring the couscous by hand to keep it from lumping. Set the top part of the couscous pan upon its bottom half and pour the couscous into it.',
      'Transfer the couscous to the steamer (upper section of couscoussier), taking care not to compress or pack the couscous. Place the steamer on top of the base of the couscoussier.',
      'If any steam escapes from the joint where the steamer and base meet, seal the joint using one of the following methods: 1) Wrap and tie a long piece of damp cloth over the joint. 2) Tightly wrap a long piece of kitchen plastic film around the joint. 3) Wrap and drape a long piece of kitchen plastic film onto the rim of the couscoussier, and then place the basket on top.',
      'Once you see steam rise from the couscous, allow the couscous to steam for a full 15 minutes.',
      'In a small bowl, dissolve 1 tablespoon of salt into 1 cup of water.',
      'Pour and spread out the couscous onto a platter. Slowly stir in the salted water into the couscous and let it sit for 15 minutes.',
      'Meanwhile, add the carrots and turnips to the bottom half of the couscous pan.',
      'After 15 minutes, add the squash and pour the couscous back into the top part of the couscous pan to cook some more.',
      'After 15 minutes, add the squash into the bottom of the couscoussier. Then put the couscous back into the steamer  again, don\'t pack the couscous and steam a second time for another 15 minutes, timing from when you see the steam rise from the top of the couscous. Remember to seal the joint if you notice steam escaping from the sides.',
      'When done, pile the couscous onto a serving platter. Arrange the vegetables in a pattern. Then drizzle the couscous with two ladles of the broth to moisten.',
      'The meat is served separately. Pour the remaining broth into a tureen so guests can choose to further moisten their couscous.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: true,
  ),
];
