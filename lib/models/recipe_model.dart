class Recipe {
  final String title;
  final String description;
  final String imgUrl;
  final List<String> ingredients;
  final List<String> steps;
  final String category;

  Recipe({
    required this.title,
    required this.description,
    required this.imgUrl,
    required this.ingredients,
    required this.steps,
    required this.category,
  });
}
