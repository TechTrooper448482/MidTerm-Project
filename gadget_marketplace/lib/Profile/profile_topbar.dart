import 'package:flutter/material.dart';

class ProfileTop extends StatelessWidget {
  const ProfileTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          color: Colors.grey[50],
          border: Border.all(color: Theme.of(context).primaryColor, width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            radius: 50,
            child: const CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/'),
              radius: 48,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, ",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 14),
              ),
              Text("Jeff Bezos",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 18)),
              Text(
                "0331-1234567 ",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 14),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.settings_rounded,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
