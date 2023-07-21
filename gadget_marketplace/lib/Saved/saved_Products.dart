import 'package:flutter/material.dart';
import 'package:gadget_marketplace/models/saved.dart';
import 'package:gadget_marketplace/Saved/saved_items.dart';

class SavedProducts extends StatefulWidget {
  const SavedProducts({Key? key}) : super(key: key);

  @override
  State<SavedProducts> createState() => _SavedProductsState();
}

class _SavedProductsState extends State<SavedProducts> {
  List<Saved> products = [];
  @override
  void initState() {
    products = List.from(
        Saved.productList.values.expand((products) => products).toList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 12,
                    physics: const BouncingScrollPhysics(
                        decelerationRate: ScrollDecelerationRate.normal),
                    crossAxisCount: 2,
                    children: List.generate(products.length,
                        (index) => SavedItem(gadget: products[index])),
                  ),
                )
              ],
            )));
  }
}
