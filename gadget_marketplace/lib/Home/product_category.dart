import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Home/item_Style.dart';
import 'package:gadget_marketplace/models/item.dart';

class Categorized extends StatelessWidget {
  const Categorized({Key?key, required this.product}): super(key: key);
  final Gadgets product;

  @override
  Widget build(BuildContext context) {
    List<Gadgets> product = [];
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          children: [
            Expanded(child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(product.length, (index) => GadgetItem(gadget: product[index]))
            ),
            )
            
          ],
        )),
    );
  }
}