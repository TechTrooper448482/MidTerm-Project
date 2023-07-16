import 'package:flutter/material.dart';

class StoreVoucher extends StatelessWidget {
  const StoreVoucher({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      height: 30,
      width: 480,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
            color: const Color.fromARGB(167, 189, 189, 189), width: 0.5),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.store_mall_directory_outlined,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            "Add Store Vouchers",
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontSize: 12, color: Colors.black),
          ),
          const Icon(
            Icons.add,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
