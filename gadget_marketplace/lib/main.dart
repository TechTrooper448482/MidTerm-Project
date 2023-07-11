import 'package:flutter/material.dart';
import 'package:gadget_marketplace/color.dart';
import 'package:gadget_marketplace/home.dart';

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
        fontFamily: "Roboto",
        textTheme: const TextTheme(
          titleSmall: TextStyle(color:Color.fromARGB(235, 214, 33, 33),fontSize:12.0, fontWeight: FontWeight.normal),
          titleMedium:TextStyle(color:Color.fromARGB(228, 202, 30, 156),fontSize:16.0 ) ,
          titleLarge: TextStyle(color:Color.fromARGB(244, 255, 155, 155),fontSize:20.0 )
        ),
        
         
          
        

        
      ),
      home: const HomePage(),
    );
  }
}


