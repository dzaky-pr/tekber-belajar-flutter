import 'package:flutter/material.dart';
import 'package:myapp/screens/recipe_list.dart';
import 'package:myapp/widgets/recipe_drawer.dart';

class RecipeTabs extends StatelessWidget {
  const RecipeTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Foods', icon: Icon(Icons.fastfood)),
              Tab(text: 'Drinks', icon: Icon(Icons.local_drink)),
            ],
          ),
          title: const Text('Tabs Demo'),
        ),
        drawer: const AppDrawer(),
        body: const TabBarView(
          children: [
            RecipeListPage(category: 'foods'),
            RecipeListPage(category: 'drinks'),
          ],
        ),
      ),
    );
  }
}
