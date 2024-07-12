class Food {
  final String name;
  final String description;
  final String imagePath;
  final int price;
  final FoodCatergory category;
  final List<Addon> addon;

  Food(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.category,
      required this.addon});
}

enum FoodCatergory {
  burgers,
  salad,
  desserts,
  drinks,
}

class Addon {
  final String name;
  final int price;

  Addon({required this.name, required this.price});
}
