import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Home/item_Style.dart';
import 'package:gadget_marketplace/models/item.dart';

class Categorized extends StatelessWidget {
  const Categorized({Key? key, required this.category}) : super(key: key);
  final String category;

  @override
  Widget build(BuildContext context) {
    final gadgets = Gadgets.productList[category] ?? [];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            " $category",
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding:const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade200, width: 1))),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.fromLTRB(8, 8, 8, 0)),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, crossAxisSpacing: 8),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: gadgets.length,
                      itemBuilder: (context, index) {
                        final gadget = gadgets[index];
                        return GadgetItem(gadget: gadget);
                      },
                    ),
                  )
                ],
              )),
        ));
  }
}
