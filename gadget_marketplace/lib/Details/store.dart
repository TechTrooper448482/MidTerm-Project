import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromARGB(34, 221, 218, 218),
        border: Border.all(
            color: const Color.fromARGB(167, 189, 189, 189), width: 1),
      ),
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.apple),
                        Text(
                          ' Apple ',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Icon(
                          Icons.check_circle_outline,
                          color: Theme.of(context).primaryColor,
                          size: 16,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'View Store',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold
                                  ),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
