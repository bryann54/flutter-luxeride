class Brand {
  final String name;
  final String logoAssetPath;

  Brand({required this.name, required this.logoAssetPath});
}

class BrandsRepository {
  static List<Brand> brands = [
    Brand(name: 'Toyota', logoAssetPath: 'assets/toyota_logo.png'),
    Brand(name: 'Honda', logoAssetPath: 'assets/honda.jpeg'),
    Brand(name: 'Hyundai', logoAssetPath: 'assets/hyundai_logo.png'),
    Brand(name: 'Jaguar', logoAssetPath: 'assets/jaguar.png'),
    Brand(name: 'BMW', logoAssetPath: 'assets/bmw_logo.png'),
    Brand(name: 'Dodge', logoAssetPath: 'assets/dodge.png'),
    Brand(name: 'Lexus', logoAssetPath: 'assets/lex.jpeg'),
    Brand(name: 'Jeep ', logoAssetPath: 'assets/jeep.png'),
    Brand(name: 'Subaru', logoAssetPath: 'assets/subaru-logo.png'),
    Brand(name: 'Volkswagen', logoAssetPath: 'assets/volkswagen_logo.png'),
    Brand(name: 'Infiniti', logoAssetPath: 'assets/infiniti.png'),
    Brand(name: 'Alfa', logoAssetPath: 'assets/alfa.png'),
  ];
}

// car category
class Category {
  final String name;
  final String imageAssetPath;
  Category({
    required this.name,
    required this.imageAssetPath,
  });
}

class CategoryList {
  static List<Category> category = [
    Category(name: 'SUV', imageAssetPath: 'assets/tx-removebg-preview.png'),
    Category(name: 'Sedan', imageAssetPath: 'assets/sedan.png'),
    Category(name: 'Hatchback', imageAssetPath: 'assets/golf_car.png'),
    Category(name: 'van', imageAssetPath: 'assets/van.png'),
    Category(name: 'Wagon', imageAssetPath: 'assets/wagon.png'),
    Category(name: 'Convertible', imageAssetPath: 'assets/convertible.png'),
    Category(name: 'Coupe', imageAssetPath: 'assets/coupee.avif'),
  ];
}
