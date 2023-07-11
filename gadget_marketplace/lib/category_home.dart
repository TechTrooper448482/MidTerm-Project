import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.2,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Explore popular categories",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
                  spacing: 16,
                  children: [
                    Chip(label: Icon(Icons.laptop_mac)),
                    Chip(label: Icon(Icons.phone_iphone)),
                    Chip(label: Icon(Icons.gamepad_outlined)),
                    Chip(label: Icon(Icons.headset_outlined)),
                    Chip(label: Icon(Icons.apps_rounded)),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
