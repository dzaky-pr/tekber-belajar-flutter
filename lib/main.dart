import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'We Cook',
      home: RecipeListPage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class RecipeListPage extends StatelessWidget {
  final List<Map<String, dynamic>> recipes = [
    {
      'title': 'Telur dadar sehat',
      'description': 'Telur dadar praktis untuk sarapan',
      'imgUrl':
          'https://res.cloudinary.com/du7nturtm/image/upload/v1730955686/telur_wakq8k.jpg',
      'ingredients': [
        '2 butir telur',
        'sejumput garam',
        'sedikit minyak goreng'
      ],
      'steps': [
        'Kocok telur dan tambahkan garam',
        'Panaskan minyak di wajan',
        'Tuang adonan telur dan masak hingga matang'
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('We Cook'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.orange.shade100,
            child: ListTile(
              leading: Image.network(
                recipes[index]['imgUrl']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(
                recipes[index]['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                recipes[index]['description']!,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        RecipeDetailPage(recipe: recipes[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class RecipeDetailPage extends StatelessWidget {
  final Map<String, dynamic> recipe;

  const RecipeDetailPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe['title']!),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              recipe['imgUrl']!,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              recipe['title']!,
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
              itemCount: recipe['ingredients'].length,
              itemBuilder: (context, index) {
                return Text(
                  '- ${recipe['ingredients'][index]}',
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
              itemCount: recipe['steps'].length,
              itemBuilder: (context, index) {
                return Text(
                  '${index + 1}. ${recipe['steps'][index]}',
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
