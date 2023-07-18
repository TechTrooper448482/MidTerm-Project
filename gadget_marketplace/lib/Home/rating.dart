import 'package:flutter/material.dart';


class ItemRatings extends StatelessWidget {
  const ItemRatings({Key ? key, required this.rating}): super(key: key);
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
      left: 5,
      child: 
     Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
        children: [
           Icon(Icons.star_outline,color: Theme.of(context).primaryColor,),
          const Padding(padding: EdgeInsets.only(left: 12)),
          Text(rating.toString())
        ],
      )
    )
    
    )
    ;
  }
}