import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_test_task/components/catalog_appbar.dart';
import 'package:flutter_test_task/components/catalog_grid.dart';
import 'package:flutter_test_task/components/product_card.dart';

import '../stores/catalog_store.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  final CatalogStore catalogStore = CatalogStore();

  _CatalogPageState() {
    catalogStore.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CatalogAppBar(
        appBar: AppBar(),
        onActionPressed: catalogStore.addProduct,
      ),
      body: Observer(builder: (_) {
        if (catalogStore.curProducts != null) {
          return CatalogGrid(
              itemCount: catalogStore.curProducts!.length,
              itemBuilder: (context, index) {
                final item = catalogStore.curProducts![index];
                return ProductCard(
                    onTap: () {
                      catalogStore.deleteProduct(item);
                    },
                    product: item);
              });
        } else {
          return Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
