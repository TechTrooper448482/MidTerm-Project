import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return SearchBar(
      controller: textController,
      elevation:const MaterialStatePropertyAll(0),
      leading: const Icon(Icons.search_rounded),
      hintText: "Search anything",
      
      
      
       
    );
  }
}
