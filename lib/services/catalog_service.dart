import 'package:flutter_test_task/constants.dart';
import 'package:flutter_test_task/extencions/random.dart';

import '../models/product.dart';

class CatalogService {
  final minAmount = 10000;
  final maxAmount = 100000;

  Future<List<Product>> generateProducts() async {
    final productsAmount = RandomInt.generate(min: minAmount, max: maxAmount);
    List<Product> products =
        List.generate(productsAmount, (index) => generateOneProduct());

    return products;
  }

  Product generateOneProduct() {
    return Product.fromMapEntry(productsDictionary.entries.elementAt(
        RandomInt.generate(max: productsDictionary.entries.length - 1)));
  }
}
