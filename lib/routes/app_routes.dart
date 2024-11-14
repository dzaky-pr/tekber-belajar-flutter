import 'package:myapp/models/recipe_model.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/recipe_detail.dart';
import 'package:myapp/screens/recipe_list.dart';
import 'package:myapp/widgets/recipe_tabs.dart';
import 'package:myapp/screens/about_me.dart';

class AppRoutes {
  static const recipeList = '/recipeList';
  static const recipeDetail = '/recipeDetail';
  static const main = '/';
  static const aboutMe = '/aboutMe';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case recipeList:
        final category = settings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => RecipeListPage(category: category));

      case recipeDetail:
        final recipe = settings.arguments as Recipe;
        return MaterialPageRoute(
          builder: (_) => RecipeDetailPage(recipe: recipe),
        );

      case main:
        return MaterialPageRoute(
          builder: (_) => const RecipeTabs(),
        );

      case aboutMe:
        return MaterialPageRoute(
          builder: (_) => const AboutMe(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
