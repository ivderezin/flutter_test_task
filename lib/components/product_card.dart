import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants.dart';

import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final void Function()? onTap;

  const ProductCard({Key? key, required this.product, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Image.network(
                product.pictureUrl,
                width: 150,
                height: 150,
              ),
              InkWell(
                onTap: onTap,
                child: Icon(
                  Icons.delete_forever,
                  color: Colors.black,
                ),
              ),
            ],
          )),
      Text(product.name,
          maxLines: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis),
    ]);
  }
}
