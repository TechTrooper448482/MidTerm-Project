import 'package:flutter/material.dart';

class BuyNow extends StatelessWidget {
  const BuyNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Select colors",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Row(
                children: [
                  CircleAvatar(
                      radius: 14,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: const CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.black,
                          ))),
                          SizedBox(width: 10,),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.circle),
                    color: Colors.blueGrey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.circle),
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border:
                Border(top: BorderSide(color: Colors.grey.shade100, width: 1)),
          ),
          child: Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/cart');
              },
              child: CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  radius: 20,
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 19,
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/cart/transaction');
                },
                child: Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Theme.of(context).primaryColor),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(104, 16, 0, 0),
                    child: Text(
                      "Buy Now",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            )
          ]),
        )
      ],
    );
  }
}
