import 'package:flutter/material.dart';
import 'package:gadget_marketplace/color.dart';

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
        fontFamily: "Roboto",
        textTheme: const TextTheme(
            titleSmall: TextStyle(
                color: Color.fromARGB(235, 124, 119, 119),
                fontSize: 14.0,
                fontWeight: FontWeight.normal),
            titleMedium:
                TextStyle(color: Color.fromARGB(227, 5, 5, 5), fontSize: 16.0),
            titleLarge: TextStyle(
                color: Color.fromARGB(244, 255, 155, 155), fontSize: 20.0)),
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
    );
  }
}
