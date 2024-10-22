// ignore_for_file: file_names

import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/add_to_cart_checkout/add_to_cart_checkout.dart';
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
        decoration: const BoxDecoration(
          color: AppColors.lightSilver,
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
                      color: AppColors.titleColorGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: TextSize.small),
                ),
                Text(
                  "Rs. $price",
                  style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor),
                )
              ],
            ),
            // Price Section
            GestureDetector(
                onTap: () {
                  controller.sendDataToCheckout();
                  Get.to(AddToCartCheckout());
                  // print(controller.checkoutList.toString());
                },
                child: const LargeButtonReusable(
                  width: 200,
                  title: "Checkout",
                  color: AppColors.buttonColor,
                ))
          ],
        ),
      ),
    );
  }
}
