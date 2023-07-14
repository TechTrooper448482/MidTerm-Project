import 'package:flutter/material.dart';
import 'package:gadget_marketplace/models/item.dart';
import 'package:gadget_marketplace/Transaction/transaction_style.dart';

class ToShip extends StatefulWidget {
  const ToShip({Key? key}) : super(key: key);

  @override
  State<ToShip> createState() => _ToShipState();
}

class _ToShipState extends State<ToShip> {
  List<Gadgets> toship = [];

  @override
  void initState() {
    int startIndex = 0;
    int endIndex = 4;
    toship = List.from(Gadgets.productList.getRange(startIndex, endIndex));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: 
      ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: toship.length,
        shrinkWrap: false,
        itemBuilder:(context, index) => CardStyle(gadget: toship[index]), ),
    );
  }
}
