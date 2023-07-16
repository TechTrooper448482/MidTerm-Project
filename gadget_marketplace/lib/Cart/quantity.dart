import 'package:flutter/material.dart';

class QuantityBar extends StatefulWidget {
  const QuantityBar({Key? key, required this.quantity}) : super(key: key);
  final int quantity;

  @override
  State<QuantityBar> createState() => _QuantityBarState();
}

class _QuantityBarState extends State<QuantityBar> {
  int quantity = 1;

  @override
  void initState() {
    quantity = widget.quantity;
    super.initState();
  }

  String getTotalAmount(double price) {
    return (quantity * price).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (quantity > 0) {
                    quantity--;
                  }
                });
              },
              icon: const Icon(Icons.remove_circle_outline_rounded)),
          Text("${quantity}",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold)),
          IconButton(
              onPressed: () {
                setState(() {
                  quantity++;
                });
              },
              icon: const Icon(Icons.add_circle_outline_rounded))
        ],
      ),
    );
  }
}
