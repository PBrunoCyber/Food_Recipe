import 'package:flutter/material.dart';
import 'package:flutter_food_recipe/views/recipe_card.dart';
import 'package:flutter_food_recipe/models/recipe.dart';
import 'package:flutter_food_recipe/controllers/recipe_list.dart';

class RecipeFoodPage extends StatefulWidget {
  const RecipeFoodPage({Key key}) : super(key: key);
  @override
  createState() => _RecipeFoodPageState();
}

class _RecipeFoodPageState extends State<RecipeFoodPage> {
  final List<Recipe> _recipes = recipesFromList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text("Food Recipe")
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (context, index) {
          final recipe = _recipes[index];
          return GestureDetector(
            onTap: () {},
            child: RecipeCard(
              image: recipe.image,
              name: recipe.name,
              totalTime: recipe.totalTime,
              rating: recipe.rating,
            ),
          );
        },
      ),
    );
  }
}
