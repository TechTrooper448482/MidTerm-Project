import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Home/item_Style.dart';
import 'package:gadget_marketplace/models/item.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Gadgets> products = [];
  @override
  void initState() {
    products = List.from(
        Gadgets.productList.values.expand((products) => products).toList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular products",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Padding(padding: EdgeInsets.only(top: 12)),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
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
                          (index) => GadgetItem(gadget: products[index])),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
