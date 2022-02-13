import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants.dart';

class CatalogAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function() onActionPressed;
  final AppBar appBar;

  const CatalogAppBar({
    Key? key,
    required this.appBar,
    required this.onActionPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 25,
      centerTitle: false,
      title: Text('Список продуктов'),
      actions: [
        IconButton(
          onPressed: onActionPressed,
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
