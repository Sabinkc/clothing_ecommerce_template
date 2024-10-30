import 'package:d_and_s/app/modules/add_to_cart/views/add_to_cart_checkout/add_to_cart_receipt/add_to_cart_payment_selection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/text_size.dart';
import '../../../../reusable_widgets/LargeButtonReusable.dart';
import '../../../../user_account/views/user_account_tabBar/user_account_tabs_address/user_account_tabs_address.dart';

class AddToCartAddress extends StatelessWidget {
  const AddToCartAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Select Address",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 50,
                  height: 5,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const UserAccountTabsAddress(),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  // Get.to(const PlaceOrder());
                  Get.to( AddToCartPaymentSelection());
                  // controller.totalPrice.value = 0;
                },
                child: const LargeButtonReusable(
                  title: "Proceed To Payment",
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
