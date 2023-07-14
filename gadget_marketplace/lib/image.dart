import 'package:flutter/material.dart';

class Image extends StatelessWidget {
  const Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.network(
            "https://myshop.pk/pub/media/catalog/product/cache/26f8091d81cea4b38d820a1d1a4f62be/s/o/sony-wh700-wireless-bluetooth-headphones-myshop-pk-5.jpg"),
      ),
    );
  }
}
