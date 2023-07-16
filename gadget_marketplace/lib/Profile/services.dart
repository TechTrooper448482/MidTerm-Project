import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [Icon(Icons.policy_outlined), Text("Policy",)],
            ),
            Column(
              children: [
                Icon(Icons.live_help_outlined),
                Text("Help center",),
              ],
            ),
            Column(
              children: [Icon(Icons.edit_square), Text("FAQs")],
            ),
          ],
        )
      ],
    );
  }
}
