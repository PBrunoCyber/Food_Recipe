import 'package:flutter/material.dart';
import 'package:flutter_food_recipe/views/recipe_card.dart';
import 'package:flutter_food_recipe/controller/recipe_list.dart';
import 'package:flutter_food_recipe/models/recipe.dart';

class RecipePageHome extends StatefulWidget {
  const RecipePageHome({Key key}) : super(key: key);
  @override
  createState() => _RecipePageHomeState();
}

class _RecipePageHomeState extends State<RecipePageHome> {
  List<Recipe> recipes = recipeFromJson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 5),
            Text(
              "Food Recipes",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return GestureDetector(
            child: RecipeCard(
              image: recipe.image,
              totalTime: recipe.totalTime,
              name: recipe.name,
              rating: recipe.rating,
            ),
          );
        },
      ),
    );
  }
}
