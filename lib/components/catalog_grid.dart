import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants.dart';

class CatalogGrid extends StatelessWidget {
  final Widget Function(BuildContext, int) itemBuilder;
  final int itemCount;

  const CatalogGrid(
      {Key? key, required this.itemBuilder, required this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(25),
        itemCount: itemCount,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 25,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
          maxCrossAxisExtent: 200,
          mainAxisExtent: 205,
        ),
        itemBuilder: itemBuilder);
  }
}
