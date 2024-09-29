import 'package:flutter/material.dart';

import '../../../constants/text_size.dart';

class ProductDetailPrice extends StatelessWidget {
  final Map priceDetails;
  const ProductDetailPrice({super.key, required this.priceDetails});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Rs. ",
          style: TextStyle(
            fontSize: TextSize.small,
          ),
        ),
        Text(
          "${priceDetails["price"]}",
          style: TextStyle(
            fontSize: TextSize.normal,
            color: Colors.red,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          "${priceDetails["realprice"]}",
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            decorationThickness: 2,
            decorationColor: Colors.grey,
            fontSize: TextSize.small,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.redAccent),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              "-${priceDetails["discount"]}%",
              style: TextStyle(
                fontSize: TextSize.small,
                color: Colors.redAccent,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
