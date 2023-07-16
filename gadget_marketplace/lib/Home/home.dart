import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Home/category_home.dart';
import 'package:gadget_marketplace/Home/product_list.dart';
import 'package:gadget_marketplace/Home/topbar.dart';
import 'package:gadget_marketplace/Home/search_home.dart';
import 'package:gadget_marketplace/Home/home_banner.dart';
import 'package:gadget_marketplace/models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Gadgets product = Gadgets(description: "",imageUrl: [],specs: '',price:0 ,product: '',product_rating: 0);
    return  SingleChildScrollView(
      child: Column(
        children: [
          const SafeArea(
              minimum: EdgeInsets.fromLTRB(20, 20, 20, 0), child: TopBar()),
          const SafeArea(
              minimum: EdgeInsets.fromLTRB(20, 12, 20, 0),
              child: HomeSearchBar()),
          const SafeArea(
              minimum: EdgeInsets.fromLTRB(10, 16, 10, 0), child: PageBanner()),
          SafeArea(
              minimum:const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: ProductCategory(product:product)),
          const SafeArea(
              minimum: EdgeInsets.fromLTRB(20, 16, 20, 0),
              child: ProductList()),
        ],
      ),
    );
  }
}
