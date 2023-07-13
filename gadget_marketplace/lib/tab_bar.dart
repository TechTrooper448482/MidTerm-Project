import 'package:flutter/material.dart';

class TabBarShip extends StatelessWidget {
  const TabBarShip({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Container(
            height: MediaQuery.of(context).size.height,
            child: Scaffold(
              appBar: AppBar(
                shape: const Border(
                    bottom: BorderSide(color: Colors.grey, width: 0.5)),
                elevation: 0,
                backgroundColor: Colors.white,
                bottom: TabBar(
                    labelColor: Colors.black,
                    indicatorColor: Theme.of(context).primaryColor,
                    tabs: const [
                      Tab(text: "To ship"),
                      Tab(text: "To receive"),
                      Tab(text: "Collected"),
                    ]),
                title: Row(children: [
                  const Text(
                    "My transactions",
                    style: TextStyle(color: Colors.black),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 134.0)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_alt_outlined),
                    iconSize: 30,
                    color: Colors.black,
                  ),
                ]),
              ),
              body: const TabBarView(children: [
                Icon(Icons.flight, size: 350),
                Icon(Icons.directions_transit, size: 350),
                Icon(Icons.directions_car, size: 350),
              ]),
            )));
  }
}
