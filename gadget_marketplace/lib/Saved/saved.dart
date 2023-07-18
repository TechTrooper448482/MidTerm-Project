import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Saved/saved_Products.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey.shade200, width: 1))),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.bookmark_outlined,
              size: 50,
              color: Theme.of(context).primaryColor,
            ),
            Text(
              'My saved products',
              
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ]),
    ),
    const SafeArea(
      minimum: EdgeInsets.all(12),
      child: SavedProducts()),

      ],
    )
    ;

   
  }
}
