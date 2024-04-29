import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Home/product_category.dart';
import 'package:gadget_marketplace/models/item.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({Key? key, required this.product}) : super(key: key);
  final Gadgets product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore popular categories",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Padding(padding: EdgeInsets.only(top: 12)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
                  spacing: 12,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Categorized(category: 'PC'),
                              ),
                            );
                          },
                          child: const Chip(
                            label: Icon(Icons.laptop_mac),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 4)),
                        Text("PC",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const Categorized(category: 'Phone'),
                                ));
                          },
                          child: const Chip(label: Icon(Icons.phone_iphone)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 4),
                        ),
                        Text(
                          "Phone",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const Categorized(category: 'Gaming'),
                                ));
                          },
                          child: const Chip(
                            label: Icon(Icons.gamepad_outlined),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 4)),
                        Text("Gaming",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const Categorized(category: 'Headphones'),
                                ));
                          },
                          child:
                              const Chip(label: Icon(Icons.headset_outlined)),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 4)),
                        Text(
                          "Headphone",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/view');
                          },
                          child:
                              const Chip(label: Icon(Icons.dashboard_outlined)),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 4)),
                        Text("View All",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
