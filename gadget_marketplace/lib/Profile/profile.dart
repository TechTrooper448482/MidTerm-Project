import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Profile/order.dart';
import 'package:gadget_marketplace/Profile/profile_topbar.dart';
import 'package:gadget_marketplace/Profile/services.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Color(0xFCFBFC),
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
