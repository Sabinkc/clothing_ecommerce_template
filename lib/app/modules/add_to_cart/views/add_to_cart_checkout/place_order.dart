import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/bottom_navigation/views/bottom_navigation_view.dart';

import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlaceOrder extends StatelessWidget {
  const PlaceOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightSilver,
      appBar: AppBar(
        title: Image.asset(
          'assets/images/successful.gif', // Replace with your asset or use Image.network for a URL
          fit: BoxFit.contain,
          height: 100, // Adjust the height according to your needs
        ),
        backgroundColor: AppColors.appbarBg,
        centerTitle: false,
        leading: const SizedBox(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: Adaptive.h(45),
                    child: Image.network(
                        'https://d-s-two.vercel.app/images/cart/order-confirm.gif'),
                  ),
                  // Positioned(
                  //   top: 0,
                  //   right: 0,
                  //   child: Image.asset(
                  //     'assets/images/successful.gif', // Replace with your asset or use Image.network for a URL
                  //     fit: BoxFit.contain,
                  //     height: 100, // Adjust the height according to your needs
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "Product Order Successfully!",
                style: TextStyle(
                    fontSize: TextSize.normal, color: AppColors.primaryColor),
              ),
              const SizedBox(height: 20),
              Text(
                "Thank you for purchasing with us. Your order number is 0000001234445. Keep Shopping with D&S Clothing",
                style: TextStyle(
                    fontSize: TextSize.small, color: AppColors.textColorGrey),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Get.to(BottomNavigationView());
                },
                child: const LargeButtonReusable(
                  title: "Continue Shopping",
                  color: AppColors.buttonColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
