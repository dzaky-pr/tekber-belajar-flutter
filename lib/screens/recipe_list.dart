import 'package:flutter/material.dart';
import '../data/recipe_data.dart';

// ignore: use_key_in_widget_constructors
class RecipeListPage extends StatelessWidget {
  final String category;

  const RecipeListPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final filteredRecipes =
        recipes.where((recipe) => recipe.category == category).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('We Cook'),
      ),
      body: ListView.builder(
        itemCount: filteredRecipes.length,
        itemBuilder: (context, index) {
          final recipes = filteredRecipes[index];

          return Card(
            color: Colors.orange.shade100,
            child: ListTile(
              leading: Image.asset(
                recipes.imgUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(
                recipes.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                recipes.description,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/recipeDetail',
                    arguments: recipes);
              },
            ),
          );
        },
      ),
    );
  }
}
