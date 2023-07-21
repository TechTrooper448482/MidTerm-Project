import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Cart/cart_image.dart';
import 'package:gadget_marketplace/Cart/cart_text.dart';
import 'package:gadget_marketplace/Cart/item_quantity.dart';

import 'package:gadget_marketplace/models/item.dart';
import 'package:gadget_marketplace/Cart/voucher.dart';

class CartStyle extends StatelessWidget {
  const CartStyle({Key? key, required this.gadget}) : super(key: key);
  final Gadgets gadget;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(12,0,12,0),
        child: Container(
          height: 200,
          width: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey, width: 1),
            color: Colors.white,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SafeArea(
                            minimum: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                            child: CartImage(gadget: gadget)),
                        SafeArea(
                          minimum: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CartName(gadget: gadget),
                        ),
                      ],
                    ),
                  ],
                ),
                SafeArea(
                    minimum: const EdgeInsets.only(right: 4),
                    child: ItemQuantity(gadget: gadget)),
                const SizedBox(
                  height: 8,
                ),
                const SafeArea(
                    minimum: EdgeInsets.fromLTRB(8, 0, 8, 4),
                    child: StoreVoucher()),
              ]),
        ));
  }
}
