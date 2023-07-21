import 'package:flutter/material.dart';
import 'package:gadget_marketplace/models/item.dart';

class QuantityBar extends StatefulWidget {
  const QuantityBar(
      {Key? key, required this.quantity, required this.onQuantityChanged})
      : super(key: key);
  final Gadgets quantity;
  final Function(int) onQuantityChanged;

  @override
  State<QuantityBar> createState() => _QuantityBarState();
}

class _QuantityBarState extends State<QuantityBar> {
  int quantity = 1;

  @override
  void initState() {
    quantity = widget.quantity.quantity;
    super.initState();
  }

  void updateQuantity(int newQuantity) {
    setState(() {
      quantity = newQuantity;
    });
    widget.onQuantityChanged(quantity);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                if (quantity > 0) {
                  updateQuantity(quantity - 1);
                }
              },
              icon: const Icon(Icons.remove_circle_outline_rounded)),
          Text("${quantity}",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold)),
          IconButton(
              onPressed: () {
                updateQuantity(quantity + 1);
              },
              icon: const Icon(Icons.add_circle_outline_rounded))
        ],
      ),
    );
  }
}
