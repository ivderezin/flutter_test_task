class Product {
  String name, pictureUrl;

  Product({required this.name, required this.pictureUrl});

  factory Product.fromMapEntry(MapEntry<String, String> entry) {
    return Product(name: entry.key, pictureUrl: entry.value);
  }
}
