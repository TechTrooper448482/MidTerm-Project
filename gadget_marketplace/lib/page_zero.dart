import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Home/home.dart';
import 'package:gadget_marketplace/Transaction/transaction.dart';
import 'package:gadget_marketplace/Profile/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> pages = [
    const HomePage(),
    const Text("In Progress"),
    const TransactionPage(),
    const ProfilePage(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
            top: BorderSide(
                color: Colors.grey, style: BorderStyle.solid, width: 0.5)),
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          showUnselectedLabels: true,
          elevation: 8,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border), label: 'Saved'),
            BottomNavigationBarItem(
                icon: Icon(Icons.feed_outlined), label: 'Transaction'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_3_outlined), label: 'Profile'),
          ],
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: const Color.fromARGB(251, 124, 121, 124),
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: pages[currentIndex],
        )),
      ),
    );
  }
}
