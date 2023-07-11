import 'package:flutter/material.dart';
import 'package:gadget_marketplace/topbar.dart';
import 'package:gadget_marketplace/search_home.dart';
import 'package:gadget_marketplace/home_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return  const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           SafeArea(
              minimum: EdgeInsets.fromLTRB(20, 48, 20, 0), child: TopBar()),
          SafeArea(
              minimum: EdgeInsets.fromLTRB(20, 32, 20, 0), child: HomeSearchBar()),
          SafeArea(
              minimum: EdgeInsets.fromLTRB(20, 16, 20, 0), child: PageBanner()),    
          


          
        ],
      ),
    );
  }
}
