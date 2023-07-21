import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Home/item_Style.dart';
import 'package:gadget_marketplace/models/item.dart';

class ProductByCategory extends StatefulWidget {
  const ProductByCategory({Key?key}):super(key: key);

  @override
  State<ProductByCategory> createState() => _ProductByCategoryState();
}

class _ProductByCategoryState extends State<ProductByCategory> {
   List<Gadgets> products = [];
List<Gadgets> getProductsByCategory(String category) {
  switch (category) {
    case 'All':
      return [];
    case 'PC':
      return getProductsWithCategory('PC');
    case 'Phone':
      return getProductsWithCategory('Phone');
    case 'Gaming':
      return getProductsWithCategory('Gaming');
    case 'Headphone':
      return getProductsWithCategory('Headphone');
    default:
      return [];
  }
}

List<Gadgets> getProductsWithCategory(String category) {
  List<Gadgets> products = [];
  for (var product in products) {
    if (Key == category) {
      products.add(product);
    }
  }
  return products;
}
   @override
  void initState() {
  
    products = List.from(Gadgets.productList.values.expand((products) => products).toList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Popular products",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const Padding(padding: EdgeInsets.only(top: 12)),
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 12,
                    physics:const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    children: List.generate(products.length,
                        (index) => GadgetItem(gadget: products[index])),
                  ),
                )
              ],
            ))
      ],
    ); 
  }
}
