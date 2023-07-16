import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Home/product_category.dart';
import 'package:gadget_marketplace/Home/product_list.dart';
import 'package:gadget_marketplace/Cart/cart.dart';
import 'package:gadget_marketplace/Transaction/tab_bar.dart';
import 'package:gadget_marketplace/Transaction/to_ship.dart';
import 'package:gadget_marketplace/Transaction/transaction.dart';
import 'package:gadget_marketplace/color.dart';
import 'package:gadget_marketplace/models/item.dart';

import 'package:gadget_marketplace/page_zero.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',
      theme: ThemeData(
        primarySwatch: primaryColor,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Poppins",
        appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black)),
        textTheme: const TextTheme(
            titleSmall: TextStyle(
                color: Color.fromARGB(235, 124, 119, 119),
                fontSize: 14.0,
                fontWeight: FontWeight.normal),
            titleMedium:
                TextStyle(color: Color.fromARGB(227, 5, 5, 5), fontSize: 16.0),
            titleLarge:
                TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 24.0)),
        chipTheme: const ChipThemeData(
            backgroundColor: Color(0xFCFBFC),
            brightness: Brightness.light,
            labelPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            shape: CircleBorder(
                side: BorderSide(
                    width: BorderSide.strokeAlignCenter, color: Colors.grey))),
        hintColor: Colors.grey[400],
      ),
      home: const BottomNav(),
      routes: {
        '/cart': (context) => const Cart(),
        '/product_category': (context) => Categorized(
              product: ModalRoute.of(context)?.settings.arguments as Gadgets,
            ),
        '/cart/transaction': (context) => const TransactionPage(),
      },
    );
  }
}
