import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_size.dart';
import '../LargeButtonReusable.dart';

class ProductDetailNavBar extends StatelessWidget {
  final String price;
   ProductDetailNavBar({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Price Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Price",
                style: TextStyle(
                  fontSize: TextSize.small,
                  color: AppColors.silver,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Rs. ",
                    style: TextStyle(fontSize: TextSize.normal),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: TextSize.large,
                      color: AppColors.lightBlue,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Add to Cart Button
          LargeButtonReusable(
            title: "Add to Cart",
            width: 180,
          ),
        ],
      ),
    );
  }
}
