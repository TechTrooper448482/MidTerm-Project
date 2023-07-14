import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomeApp(),
    );
  }
}

class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  State<MyHomeApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyHomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80,
            width: 420,
            color: Colors.white,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                  alignment: Alignment.bottomLeft,
                  iconSize: 30,
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share_outlined),
                  alignment: Alignment.bottomRight,
                  iconSize: 30,
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border),
                  alignment: Alignment.bottomRight,
                  iconSize: 30,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            child: Image.network(
                'https://myshop.pk/pub/media/catalog/product/cache/26f8091d81cea4b38d820a1d1a4f62be/s/o/sony-wh700-wireless-bluetooth-headphones-myshop-pk-5.jpg'),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: const Row(
              children: [
                Text(
                  'Sony WH-XB700 - Bluetooth \nWireless Headphones',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  '\$299',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ),
          Container(
            child: const Row(
              children: [
                Icon(
                  Icons.star_border,
                  color: Color.fromARGB(255, 187, 76, 117),
                ),
                Text(
                  '4.8 rating',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.type_specimen_sharp,
                  color: Color.fromARGB(255, 187, 76, 117),
                ),
                Text(
                  '782 reviews',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.grey[200],
            ),
            height: 40,
            width: 380,
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Icon(Icons.minimize),
                      Text(
                        'Bose',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.check_circle_outline,
                        color: Color.fromARGB(255, 210, 64, 117),
                      ),
                      Text(
                        'View Store',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 176, 66, 102)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
