import 'package:flutter/material.dart';
import 'package:gadget_marketplace/models/item.dart';
import 'package:gadget_marketplace/Cart/quantity.dart';

class ItemQuantity extends StatefulWidget {
  const ItemQuantity({Key? key, required this.gadget}) : super(key: key);
  final Gadgets gadget;

  @override
  State<ItemQuantity> createState() => _ItemQuantityState();
}

class _ItemQuantityState extends State<ItemQuantity> {
  double totalCost = 0;
  void updateTotalAmount(int quantity) {
    setState(() {
      totalCost = widget.gadget.price * quantity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
            padding: EdgeInsets.only(right: 36),
            child: QuantityBar(
              quantity: widget.gadget,
              onQuantityChanged: updateTotalAmount,
            )),
            Text("\$ ${totalCost.toStringAsFixed(2)} ", 
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold))
      ],
    );
  }
}
