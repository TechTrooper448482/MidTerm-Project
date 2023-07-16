import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Details/description_tab.dart';
import 'package:gadget_marketplace/Details/image_details.dart';
import 'package:gadget_marketplace/Details/info.dart';
import 'package:gadget_marketplace/models/item.dart';
import 'package:gadget_marketplace/Details/review.dart';
import 'package:gadget_marketplace/Details/store.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.gadget}) : super(key: key);
  final Gadgets gadget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share_outlined),
                  alignment: Alignment.bottomRight,
                  iconSize: 28,
                  color: Colors.black,
                  visualDensity: VisualDensity.compact),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_border),
                alignment: Alignment.bottomRight,
                iconSize: 28,
                color: Colors.black,
                visualDensity: VisualDensity.comfortable,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                minimum: const EdgeInsets.fromLTRB(8, 4, 8, 0),
                child: DetailsImage(gadget: gadget),
              ),
              SafeArea(
                  minimum: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: ProductName(gadget: gadget)),
              SafeArea(
                  minimum: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: Reviews(gadget: gadget)),
              const SafeArea(
                  minimum: EdgeInsets.fromLTRB(20, 10, 20, 0), child: Store()),
              DescriptionTab(
                gadget: gadget,
              )
            ],
          ),
        ));
  }
}
