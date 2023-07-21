import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double shipping = 24.99;
    double discount = 149.99;
    double grossTotal = 5000;
    double totalBill = grossTotal - discount + shipping;

    return Container(
      padding: const EdgeInsets.fromLTRB(8, 16, 16, 0),
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              " Gross Total",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "\$ ${grossTotal.toStringAsFixed(2)}",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              " Discount",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "-${discount} ",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              " Shipping",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text("$shipping",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(
          height: 160,
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(8, 36, 8, 0),
            child: Column(
              children: [
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " Total Bill",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text("\$ ${totalBill.toStringAsFixed(2)} ",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold)),
                      ],
                    )),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/cart/transaction');
                  },
                  child: Container(
                    height: 56,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Theme.of(context).primaryColor),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(104, 16, 0, 0),
                      child: Text(
                        "Place Order",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
