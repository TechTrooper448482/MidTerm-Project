import 'package:flutter/material.dart';
import 'package:gadget_marketplace/models/item.dart';

class CartImage extends StatelessWidget {
  const CartImage({Key? key, required this.gadget}) : super(key: key);
  final Gadgets gadget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(82, 221, 218, 218),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: Image.network(
          gadget.imageUrl[0],
          height: 124,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
