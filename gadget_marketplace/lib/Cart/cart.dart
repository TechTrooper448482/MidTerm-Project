import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Cart/cart_style.dart';
import 'package:gadget_marketplace/Cart/checkout.dart';
import 'package:gadget_marketplace/models/item.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Gadgets> cart = [];
  @override
  void initState() {
    cart = List.from(
        Gadgets.productList.values.expand((products) => products).toList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My cart",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            SafeArea(
                minimum: const EdgeInsets.fromLTRB(5, 36, 20, 20),
                child: Container(
                  height: 200,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cart.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            CartStyle(gadget: cart[index]),
                      )),
                )),
            const Checkout(),
          ],
        )));
  }
}
