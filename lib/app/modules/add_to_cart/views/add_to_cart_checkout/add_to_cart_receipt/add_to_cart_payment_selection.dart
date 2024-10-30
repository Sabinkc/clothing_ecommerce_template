// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/text_size.dart';
import '../../../../reusable_widgets/LargeButtonReusable.dart';
import '../place_order.dart';

class AddToCartPaymentSelection extends StatelessWidget {
  var paymentSelectionIndex = 0.obs;
  AddToCartPaymentSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Payment Selection",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: TextSize.normal,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.appbarBg,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    // Center(
                    //   child: Container(
                    //     width: 50,
                    //     height: 5,
                    //     margin: const EdgeInsets.only(bottom: 20),
                    //     decoration: BoxDecoration(
                    //       color: Colors.grey[300],
                    //       borderRadius: BorderRadius.circular(10),
                    //     ),
                    //   ),
                    // ),
                    Center(
                      child: Text(
                        "Select Your Payment Method",
                        style: TextStyle(
                            color: AppColors.titleColorGrey,
                            fontWeight: FontWeight.w700,
                            fontSize: TextSize.normal),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Cash on Delivery Option
                    _paymentMethodTile(
                      context,
                      index: 0,
                      icon: Image.asset("assets/images/cashondelivery.png",
                          height: 30),
                      title: "Cash On Delivery",
                      subtitle: "Pay when you receive the product",
                      // trailingIcon: Icons.arrow_forward_ios,
                      onTap: () {
                        paymentSelectionIndex.value = 0;
                      },
                    ),
                    const SizedBox(height: 20),

                    // Mobile Banking Option
                    _paymentMethodTile(
                      context,
                      icon: const Icon(FontAwesomeIcons.mobileAlt,
                          size: 30, color: Colors.green),
                      title: "Mobile Banking",
                      subtitle: "Pay with your mobile banking app",
                      // trailingIcon: Icons.arrow_forward_ios,
                      onTap: () {
                        paymentSelectionIndex.value = 1;
                        // Handle payment selection
                      },
                      index: 1,
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 50),
        child: GestureDetector(
          onTap: () {
            Get.to(const PlaceOrder());

            // controller.totalPrice.value = 0;
          },
          child: const LargeButtonReusable(
            title: "Place Order",
            color: AppColors.buttonColor,
          ),
        ),
      ),
    );
  }

  Widget _paymentMethodTile(
    BuildContext context, {
    required int index,
    required Widget icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: AppColors.titleColorGrey,
                      fontWeight: FontWeight.w700,
                      fontSize: TextSize.small),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                      color: AppColors.titleColorGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: TextSize.small),
                ),
              ],
            ),
            const Spacer(),
            Obx(
              () => paymentSelectionIndex.value == index
                  ? const Icon(
                      Icons.check,
                      size: 18,
                      color: AppColors.textColorGrey,
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
