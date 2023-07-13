import 'package:flutter/material.dart';


class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return SingleChildScrollView(
        child: TextField(
      controller: textController,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search_rounded,size: 30,), // Leading icon
        hintText: "Search anything", // Placeholder text
        filled: true,
        fillColor: Colors.white, // Background color
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey
                  .shade300), // Border color when the search bar is enabled
          borderRadius: BorderRadius.circular(50.0), // Border radius
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey
                  .shade300), // Border color when the search bar is focused
          borderRadius: BorderRadius.circular(50.0), // Border radius
        ),
      ),
    ));
  }
}
