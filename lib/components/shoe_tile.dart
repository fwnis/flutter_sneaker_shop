import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;
  const ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //shoe pic
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              shoe.imagePath,
              height: 260,
            )),

        //description
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            shoe.description,
            maxLines: 2,
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        //price + detail
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 6),
                    child: Text(
                      shoe.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Text(
                    '\$ ${shoe.price}',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),

              // add to cart button
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )

        //button to add to cart
      ]),
    );
  }
}
