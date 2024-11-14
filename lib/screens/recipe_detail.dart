import 'package:flutter/material.dart';
import 'package:myapp/models/recipe_model.dart';

class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              recipe.imgUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              recipe.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Bahan-bahan',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: recipe.ingredients.length,
              itemBuilder: (context, index) {
                return Text(
                  '- ${recipe.ingredients[index]}',
                  style: const TextStyle(fontSize: 16),
                );
              },
            ),
            const SizedBox(height: 16),
            const Text(
              'Langkah-langkah',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: recipe.steps.length,
              itemBuilder: (context, index) {
                return Text(
                  '${index + 1}. ${recipe.steps[index]}',
                  style: const TextStyle(fontSize: 16),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
