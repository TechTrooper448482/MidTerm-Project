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
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text("Hammad Nadeem",style: Theme.of(context).textTheme.titleMedium,),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications_none)),
            ],
          )
        ],
      ),
    );
  }
}
