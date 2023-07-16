import 'package:flutter/material.dart';
import 'package:gadget_marketplace/models/item.dart';

class CartName extends StatelessWidget {
  const CartName({Key? key, required this.gadget}) : super(key: key);
  final Gadgets gadget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Text(
        "${gadget.product}",
        maxLines: 3,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
