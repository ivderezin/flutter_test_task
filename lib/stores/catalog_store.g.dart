// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CatalogStore on _CatalogStoreBase, Store {
  final _$curProductsAtom = Atom(name: '_CatalogStoreBase.curProducts');

  @override
  ObservableList<Product>? get curProducts {
    _$curProductsAtom.reportRead();
    return super.curProducts;
  }

  @override
  set curProducts(ObservableList<Product>? value) {
    _$curProductsAtom.reportWrite(value, super.curProducts, () {
      super.curProducts = value;
    });
  }

  final _$fetchProductsAsyncAction =
      AsyncAction('_CatalogStoreBase.fetchProducts');

  @override
  Future<void> fetchProducts() {
    return _$fetchProductsAsyncAction.run(() => super.fetchProducts());
  }

  final _$_CatalogStoreBaseActionController =
      ActionController(name: '_CatalogStoreBase');

  @override
  void deleteProduct(Product product) {
    final _$actionInfo = _$_CatalogStoreBaseActionController.startAction(
        name: '_CatalogStoreBase.deleteProduct');
    try {
      return super.deleteProduct(product);
    } finally {
      _$_CatalogStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
curProducts: ${curProducts}
    ''';
  }
}
