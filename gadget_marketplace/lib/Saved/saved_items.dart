import 'package:flutter/material.dart';
import 'package:gadget_marketplace/Home/rating.dart';
import 'package:gadget_marketplace/models/saved.dart';

class SavedItem extends StatelessWidget {
  const SavedItem({Key? key, required this.gadget}) : super(key: key);
  final Saved gadget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/details', arguments: gadget);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(174, 252, 251, 252),
                    ),
                    padding: const EdgeInsets.fromLTRB(12, 16, 12, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Stack(
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 189, 187, 187)),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.network(
                                gadget.imageUrl[0],
                                height: 100,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
                const Padding(padding: EdgeInsets.fromLTRB(8, 8, 0, 0)),
                ItemRatings(rating: gadget.product_rating)
              ],
            ),
            Container(
              child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    " ${gadget.product}",
                    style: Theme.of(context).textTheme.titleMedium,
                  )),
            )
          ],
        ));
  }
}
