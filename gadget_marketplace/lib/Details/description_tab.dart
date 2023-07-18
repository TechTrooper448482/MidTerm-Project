import 'package:flutter/material.dart';
import 'package:gadget_marketplace/models/item.dart';
import 'package:expandable_text/expandable_text.dart';

class DescriptionTab extends StatelessWidget {
  const DescriptionTab({Key? key, required this.gadget}) : super(key: key);
  final Gadgets gadget;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(60),
                child: AppBar(
                  automaticallyImplyLeading: false,
                  shape: const Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5)),
                  elevation: 0,
                  backgroundColor: Colors.white,
                  bottom: TabBar(
                      labelColor: Colors.black,
                      indicatorColor: Theme.of(context).primaryColor,
                      tabs: const [
                        Tab(text: "Description"),
                        Tab(text: "Specification"),
                      ]),
                ),
              ),
              body: TabBarView(children: [
                SafeArea(
                    minimum: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ExpandableText(
                          "${gadget.description}",
                          expandText: "Read All",
                          collapseOnTextTap: true,
                          linkColor: Theme.of(context).primaryColor,
                          maxLines: 5,
                        ))),
                SafeArea(
                    minimum: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ExpandableText(
                          "${gadget.specs}",
                          expandText: "Read All",
                          collapseOnTextTap: true,
                          linkColor: Theme.of(context).primaryColor,
                          maxLines: 6,
                        )
                    )),
              ]),
            )));
  }
}
