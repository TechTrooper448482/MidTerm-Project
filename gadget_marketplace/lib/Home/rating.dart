import 'package:flutter/material.dart';
import 'package:gadget_marketplace/models/item.dart';

class ItemRatings extends StatelessWidget {
  const ItemRatings({Key ? key, required this.rating}): super(key: key);
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: 
     Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 252, 249, 249),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
        children: [
           Icon(Icons.star_outline,color: Theme.of(context).primaryColor,),
          const Padding(padding: EdgeInsets.only(left: 12)),
          Text("${rating.toString()}")
        ],
      )
    )
    
    )
    ;
  }
}