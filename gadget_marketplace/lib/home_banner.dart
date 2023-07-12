import 'package:flutter/material.dart';
import 'package:gadget_marketplace/color.dart';

class PageBanner extends StatelessWidget {
  const PageBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://assets.bose.com/content/dam/cloudassets/Bose_DAM/Web/consumer_electronics/global/products/headphones/qc45/images/QC45_TrinityRodman_pdp_1920x1440.jpg/jcr:content/renditions/cq5dam.web.1000.1000.jpeg"),
                  fit: BoxFit.fitWidth),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        SafeArea(
            minimum: const EdgeInsets.fromLTRB(10, 100, 10, 0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.125,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SafeArea(
                        minimum: const EdgeInsets.fromLTRB(10, 10, 0, 4),
                        child: Text('Listen to your favourite song',
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 12)),
                      ),
                      SafeArea(
                        minimum: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                        child: Text('Discount 20% for \nheadphones!',
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold))),
                      
                    ],
                  ),
                  SafeArea(
                      minimum: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_circle_right_rounded),
                        iconSize: 40,
                        color: primaryColor,
                      ))
                ],
              ),
            ))
      ],
    );
  }
}
