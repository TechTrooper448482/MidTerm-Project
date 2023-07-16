import 'package:flutter/material.dart';


class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 16, 12, 0),
      height: MediaQuery.of(context).size.height * 0.47,
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
              "123 ",
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
              "-50 ",
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
            Text("5 ",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(
          height: 20,
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
                        Text("\$ 5453 ",
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
