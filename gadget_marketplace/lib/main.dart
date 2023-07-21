import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Cart/cart.dart';
import 'package:gadget_marketplace/Home/view.dart';
import 'package:gadget_marketplace/Transaction/transaction.dart';
import 'package:gadget_marketplace/color.dart';
import 'package:gadget_marketplace/Details/details.dart';
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
                TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 24.0),
            bodyMedium: TextStyle(),
            headlineSmall: TextStyle(
              color: Color.fromARGB(235, 124, 119, 119),
              fontSize: 14.0,
            ),
            headlineLarge:
                TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18.0)),
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
        '/cart/transaction': (context) => const TransactionPage(),
        '/details': (context) => DetailsPage(
            gadget: ModalRoute.of(context)?.settings.arguments as Gadgets),
        '/view': (context) => const ViewAll(),
      },
    );
  }
}
