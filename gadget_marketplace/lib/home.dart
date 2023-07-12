import 'package:flutter/material.dart';
import 'package:gadget_marketplace/category_home.dart';
import 'package:gadget_marketplace/product_list.dart';
import 'package:gadget_marketplace/topbar.dart';
import 'package:gadget_marketplace/search_home.dart';
import 'package:gadget_marketplace/home_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
              minimum: EdgeInsets.fromLTRB(20, 28, 20, 0), child: TopBar()),
          SafeArea(
              minimum: EdgeInsets.fromLTRB(20, 12, 20, 0),
              child: HomeSearchBar()),
          SafeArea(
              minimum: EdgeInsets.fromLTRB(10, 16, 10, 0), child: PageBanner()),
          SafeArea(
              minimum: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: ProductCategory()),
          SafeArea(
              minimum: EdgeInsets.fromLTRB(20, 16, 20, 0),
              child: ProductList()),
        ],
      ),
    );
  }
}
