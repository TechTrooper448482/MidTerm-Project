import 'package:flutter/material.dart';
import 'package:gadget_marketplace/order.dart';
import 'package:gadget_marketplace/profile_topbar.dart';
import 'package:gadget_marketplace/services.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.grey[300],
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SafeArea(minimum: EdgeInsets.all(10), child: ProfileTop()),
              SafeArea(minimum: EdgeInsets.all(10), child: Orders()),
              SafeArea(minimum: EdgeInsets.all(10), child: Services())
            ],
          )),
    );
  }
}
