import 'package:flutter/material.dart';
import 'package:gadget_marketplace/models/item.dart';

class CardStyle extends StatelessWidget {
  const CardStyle({Key? key, required this.gadget}) : super(key: key);
  final Gadgets gadget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/details',arguments: gadget);
                      },
                      child:Container(
                      height: 50,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color:const Color.fromARGB(82, 221, 218, 218),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.network(
                          gadget.imageUrl[0],
                          height: 50,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ), 
                    ),
                    
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 4.0)),
                    Text(
                      " ${gadget.product}",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [Text("1x \$${gadget.price.toStringAsFixed(2)}")],
                )
              ],
            ),

            const SizedBox(height: 10,),
            Container(
              padding:const EdgeInsets.fromLTRB(10,0,10,0),
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: const Color.fromARGB(167, 189, 189, 189),width: 0.5),
                color: Colors.white,
              ),
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.local_shipping_outlined,color: Theme.of(context).primaryColor,),
                  
                  Text("Your purchase is being delivered to you Location",style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 8,color: Colors.black),),
                  const Icon(Icons.arrow_forward,color: Colors.black,)

                ],
              ),

            )


          ]),
    );
  }
}
