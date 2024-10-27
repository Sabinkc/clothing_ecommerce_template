// ignore_for_file: must_be_immutable

import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/add_to_cart_checkout/add_to_cart_receipt/add_to_cart_receipt.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/add_to_cart_checkout/place_order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/text_size.dart';
import '../../../reusable_widgets/LargeButtonReusable.dart';
import 'add_to_cart_receipt/add_to_cart_address_selection.dart';
import 'add_to_cart_receipt/add_to_cart_payment_selection.dart';

class AddToCartCheckout extends StatelessWidget {
  final controller = Get.put(AddToCartController());
  AddToCartCheckout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: TextSize.normal,
          ),
        ),
        backgroundColor: AppColors.appbarBg,
        centerTitle: false,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.lightSilver,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CheckoutUserInfo(),
                const SizedBox(height: 20),
                Column(
                  children: controller.checkoutList.map((item) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        // borderRadius: BorderRadius.circular(16),
                        // border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Product Image
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: AssetImage(item["image"]),
                                    fit: BoxFit.cover)
                                // color: Colors.amber
                                // image: DecorationImage(
                                //   image: NetworkImage(item["image"]),
                                //   fit: BoxFit.cover,
                                ),
                          ),

                          const SizedBox(width: 10),

                          // Product Details
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Product Title

                                Text(
                                  item["title"],
                                  style: TextStyle(
                                    color: AppColors.titleColorGrey,
                                    fontSize: TextSize.normal,
                                    fontWeight: FontWeight.w700,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  maxLines: 2,
                                ),
                                const SizedBox(height: 5),
                                CheckoutRowReusable(
                                  title: "Size",
                                  subtitle: "${item["size"]}",
                                ),
                                const SizedBox(height: 5),
                                CheckoutRowReusable(
                                  title: "Quantity",
                                  subtitle: "${item["quantity"]}",
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Color",
                                      style: TextStyle(
                                        fontSize: TextSize.small,
                                        // color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(
                                          item["color"],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Price",
                                      style: TextStyle(
                                        fontSize: TextSize.small,
                                        // color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "Rs. ${item["price"]}",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
                AddToCartReceipt(),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) => CheckoutVoucher());
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      // borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: const Row(
                      children: [
                        Icon(Icons.card_giftcard_rounded),
                        SizedBox(width: 10),
                        Text("Voucher"),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.textColorGrey,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) =>
                            const AddToCartPaymentSelection());
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      // borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/cashondelivery.png",
                          height: 25,
                        ),
                        const SizedBox(width: 10),
                        const Text("Cash On Delivery"),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.textColorGrey,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    Get.to(const PlaceOrder());
                    // controller.totalPrice.value = 0;
                  },
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: LargeButtonReusable(
                      title: "Place Order",
                      color: AppColors.buttonColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CheckoutRowReusable extends StatelessWidget {
  final String title, subtitle;
  const CheckoutRowReusable(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              color: AppColors.titleColorGrey,
              fontWeight: FontWeight.w500,
              fontSize: TextSize.small),
        ),
        Text(
          subtitle,
          style: TextStyle(
              color: AppColors.textColorGrey,
              fontWeight: FontWeight.w500,
              fontSize: TextSize.small),
        )
      ],
    );
  }
}

class CheckoutUserInfo extends StatelessWidget {
  const CheckoutUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => const AddToCartAddress());
      },
      child: Container(
        decoration: const BoxDecoration(
            // borderRadius: BorderRadius.circular(16),
            color: Colors.white),
        padding: const EdgeInsets.all(16),

        // width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Icon(
                Icons.location_off_outlined,
                color: AppColors.textColorGrey,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              // width: Adaptive.w(50),
              // // color: Colors.red,
              // height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Brenna Cotton",
                        style: TextStyle(
                            color: AppColors.titleColorGrey,
                            fontSize: TextSize.normal,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "+977-1234567890",
                        style: TextStyle(
                            fontSize: TextSize.small,
                            color: AppColors.primaryColor),
                      ),
                    ],
                  ),
                  Text(
                    "123 Main Street, London, 123 Main Street, London, 123 Main Street, London",
                    // overflow: TextOverflow.ellipsis,
                    // maxLines: 2,
                    style: TextStyle(
                        color: AppColors.textColorGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: TextSize.small),
                  )
                ],
              ),
            ),
            // const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.textColorGrey,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class CheckoutVoucher extends StatelessWidget {
  var selectedVoucher = 0.obs;
  CheckoutVoucher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Select a Voucher',
                style: TextStyle(
                    color: AppColors.titleColorGrey,
                    fontWeight: FontWeight.w700,
                    fontSize: TextSize.normal),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Voucher List Section
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Example count of vouchers
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    selectedVoucher.value = index;
                    // Handle voucher selection
                  },
                  child: Obx(
                    () => Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.local_offer_rounded,
                            size: 32,
                            color: selectedVoucher.value == index
                                ? AppColors.primaryColor
                                : AppColors.textColorGrey,
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '10% off on orders above Rs1,000 ',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: selectedVoucher.value == index
                                        ? FontWeight.w700
                                        : FontWeight.w400,
                                    color: AppColors.titleColorGrey,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Expires: Dec 31, 2024',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.captionColorGrey,
                                    fontWeight: selectedVoucher.value == index
                                        ? FontWeight.w900
                                        : FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.check_circle,
                              color: selectedVoucher.value == index
                                  ? AppColors.primaryColor
                                  : AppColors.textColorGrey),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Bottom Actions
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(
                      color: AppColors.titleColorGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: TextSize.small),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Confirm voucher selection
                  Get.snackbar("Voucher", "Voucher Applied Successfully",
                      backgroundColor: AppColors.green,
                      colorText: Colors.white);
                },
                child: Text(
                  'Confirm',
                  style: TextStyle(
                      color: AppColors.titleColorGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: TextSize.small),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
