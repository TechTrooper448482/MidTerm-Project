import 'package:flutter/material.dart';


class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                "Welcome",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                "Jeff Bezos",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cart');
                      },
                      icon: const Icon(Icons.shopping_cart_outlined),
                    ),
                    const Positioned(
                      top: 2,
                      right: 6,
                      child: Badge(
                        label: Text(
                          "3",
                        ),
                        isLabelVisible: true,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications_none)),
            ],
          )
        ],
      ),
    );
  }
}
