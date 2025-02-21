import 'package:flutter/material.dart';
import '../models/recipe.dart';
import './details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      id: '1',
      name: 'Butter Chicken',
      ingredients: [
        'salt and pepper to taste',
        '2lbs boneless, skinless chicken breasts, cut into bite-sized pieces',
        '3tsp chili powder',
        '1tsp tumeric',
        '6tbsp unsalted butter',
        '1 1/2 cups diced yellow onion',
        '3tsp garam masala',
        '1tsp ground cumin',
        '1tsp cayenne pepper',
        '1tbsp grated ginger',
        '3 cloves garlic, minced',
        '1 cinnamon stick',
        '14 oz tomato sauce',
        '1 cup water',
        '1 cup heavy cream',
        'chopped fresh cilantro for garnish'
      ],
      instructions: [
        'Add salt, pepper, 2tsp chili powder, and tumeric to chicken, mix and let marinate',
        'In a pan, melt 2tbsp butter and cook chicken until browned',
        'Remove chicken and set aside',
        'Melt 2tbsp butter in the same pan, add onions, garam masala, cumin, cayenne, chili powder, ginger, garlic, and cinnamon stick',
        'Add the tomato sauce, along with salt and pepper to taste',
        'Add water and cream, mix well',
        'Add chicken back to the pan and simmer for 10-15 minutes',
        'Add the remaining 2tbsp butter, mix well',
        'Serve with rice or naan and garnish with cilantro'
      ],
      imageUrl: 'lib/assets/butterch.jpg',
    ),
    Recipe(
      id: '2',
      name: 'Classic Margherita Pizza',
      ingredients: [
        'Pizza dough',
        'Tomato sauce',
        'Fresh mozzarella',
        'Chopped cherry tomatoes',
        'Fresh basil',
        'Olive oil'
      ],
      instructions: [
        'Preheat oven to 450°F',
        'Roll out dough onto baking pan',
        'Add toppings',
        'Bake for 12-15 minutes'
      ],
      imageUrl: 'lib/assets/pizza.jpg',
    ),
    Recipe(
      id: '3',
      name: 'Bruschetta',
      ingredients: [
        '1 loaf of Italian bread',
        '2 cloves of garlic',
        '2 cups of cherry tomatoes',
        '1/4 cup of fresh basil',
        '1/4 cup of olive oil',
        '1/4 cup of balsamic vinegar',
        'salt and pepper to taste'
      ],
      instructions: [
        'Preheat oven to 450°F',
        'Slice bread into 1/2 inch slices',
        'Toast bread in oven for 5-7 minutes',
        'Rub garlic on toasted bread',
        'Mix tomatoes, basil, olive oil, vinegar, salt, and pepper',
        'Top bread with tomato mixture'
      ],
      imageUrl: 'lib/assets/bruschetta.jpg',
    ),
    Recipe(
      id: '4',
      name: 'Chocolate Cheesecake',
      ingredients: [
        '1 1/2 cups chocolate wafer crumbs',
        '1/3 cup butter, melted',
        '1 cup semisweet chocolate chips',
        '3 (8oz) packages cream cheese',
        '1 cup white sugar',
        '1/4 cup unsweetened cocoa powder',
        '3 eggs',
        '1 cup sour cream',
        '1 tsp vanilla extract',
        '1/4 cup all-purpose flour'
      ],
      instructions: [
        'Preheat oven to 350°F',
        'Mix crumbs and butter, press into bottom of pan',
        'Melt chocolate chips',
        'Mix cream cheese, sugar, cocoa, eggs, sour cream, vanilla, and flour',
        'Add melted chocolate',
        'Pour over crust',
        'Bake for 55 minutes',
        'Cool, then refrigerate'
      ],
      imageUrl: 'lib/assets/chcheese.jpg',
    ),
    Recipe(
      id: '5',
      name: 'Chocolate Chip Cookies',
      ingredients: [
        '2 1/4 cups all-purpose flour',
        '1/2 tsp baking soda',
        '1 cup unsalted butter',
        '1/2 cup granulated sugar',
        '1 cup packed brown sugar',
        '1 tsp salt',
        '2 tsp vanilla extract',
        '2 large eggs',
        '2 cups semisweet and/or milk chocolate chips'
      ],
      instructions: [
        'Preheat oven to 375°F',
        'Mix flour and baking soda',
        'Mix butter, sugar, brown sugar, salt, and vanilla',
        'Add eggs',
        'Add flour mixture',
        'Add chocolate chips',
        'Drop dough onto baking sheet',
        'Bake for 9-11 minutes'
      ],
      imageUrl: 'lib/assets/chcookies.jpg',
    )
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorite Recipes'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            elevation: 4.0,
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset(
                    recipes[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  title: Text(
                    recipes[index].name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(recipe: recipes[index]),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
