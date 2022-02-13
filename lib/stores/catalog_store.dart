import 'package:flutter_test_task/services/catalog_service.dart';
import 'package:mobx/mobx.dart';
import '../models/product.dart';
part 'catalog_store.g.dart';

class CatalogStore = _CatalogStoreBase with _$CatalogStore;
final CatalogService catalogService = CatalogService();

abstract class _CatalogStoreBase with Store {
  @observable
  ObservableList<Product>? curProducts;

  @action
  Future<void> fetchProducts() async {
    curProducts = ObservableList.of(await catalogService.generateProducts());
  }

  @action
  void deleteProduct(Product product) {
    curProducts!.remove(product);
  }

  @action
  void addProduct() {
    curProducts!.insert(0, catalogService.generateOneProduct());
  }
}
