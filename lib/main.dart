import 'package:flutter/material.dart';
import 'package:myapp/routes/app_routes.dart';
import 'package:myapp/widgets/recipe_tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'We Cook',
      home: RecipeTabs(),
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
