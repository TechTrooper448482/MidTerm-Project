import 'package:flutter/material.dart';
import 'package:gadget_marketplace/models/item.dart';

class DetailsImage extends StatelessWidget {
  const DetailsImage({Key? key, required this.gadget}) : super(key: key);
  final Gadgets gadget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(34, 221, 218, 218),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: gadget.imageUrl
                .map(
                  (url) => Image.network(url, height: 124, fit: BoxFit.contain),
                )
                .toList(),
          )),
    );
  }
}
