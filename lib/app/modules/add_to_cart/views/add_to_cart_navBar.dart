import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddToCartNavBar extends StatelessWidget {
  final String price;
  final controller = Get.put(AddToCartController());
   AddToCartNavBar({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 10,
          //     offset: Offset(0, -2),
          //   ),
          // ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Price",
                  style: TextStyle(
                    fontSize: TextSize.small,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Rs. " + price,
                  style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                      color: Colors.red),
                )
              ],
            ),
            // Price Section
            LargeButtonReusable(width: 200, title: "Checkout")
          ],
        ),
      ),
    );
  }
}
