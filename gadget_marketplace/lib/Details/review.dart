import 'package:flutter/material.dart';
import 'package:gadget_marketplace/models/item.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key, required this.gadget}) : super(key: key);
  final Gadgets gadget;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.star_border,
                color: Theme.of(context).primaryColor,
              ),
              Text(
                '${gadget.product_rating} rating',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          const SizedBox(
            width: 16,
          ),
          Row(
            children: [
              Icon(
                Icons.chat_bubble_outline_rounded,
                color: Theme.of(context).primaryColor,
              ),
              Text(
                '782 reviews',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
