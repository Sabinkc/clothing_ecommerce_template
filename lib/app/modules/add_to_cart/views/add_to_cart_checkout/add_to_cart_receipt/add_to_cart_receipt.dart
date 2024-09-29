import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';



import 'package:flutter/material.dart';

import 'package:get/get.dart';


class AddToCartReceipt extends StatelessWidget {
  final controller = Get.put(AddToCartController());
  AddToCartReceipt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            // decoration: BoxDecoration(
            //   boxShadow: [
            //     BoxShadow(
            //       color: Colors.grey.withOpacity(0.2),
            //       spreadRadius: 2,
            //       blurRadius: 6,
            //       offset: const Offset(0, 3), // changes position of shadow
            //     ),
            //   ],
            //   borderRadius: BorderRadius.circular(16),
            //   color: Colors.white,
            // ),
            child: Column(
              children: [
                const AddToCartTitleRow(
                  title: "Receipt",
                  icon: Icon(
                    Icons.receipt_outlined,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 20),
                AddToCartReceiptRow(
                  title: "Amount",
                  subtitle: "Rs ${controller.totalPrice.value}",
                  // icon: const Icon(
                  //   Icons.attach_money,
                  //   color: Colors.grey,
                  // ), // Money icon for amount
                ),
                const SizedBox(height: 10),
                const AddToCartReceiptRow(
                  title: "Shipping Charge",
                  subtitle: "Rs. 100",
                  // icon: Icon(
                  //   Icons.local_shipping_outlined,
                  //   color: Colors.grey,
                  // ), // Shipping icon
                ),
                const SizedBox(height: 10),
                AddToCartReceiptRow(
                  title: "Total Amount",
                  subtitle: "Rs ${controller.totalPrice.value + 100}",
                  isTotal: true,
                  // icon: const Icon(
                  //   Icons.calculate_outlined,
                  //   // color: Colors.green,
                  // ), // Calculation icon for total
                ),

                // Row(
                //   children: [
                //     const Icon(
                //       Icons.local_shipping,
                //       color: Colors.green,
                //     ),
                //     const SizedBox(width: 10),
                //     const Text("Shipping"),
                //     const Spacer(),
                //     GestureDetector(
                //       onTap: () {
                //         showBottomSheet(
                //             context: context,
                //             builder: (BuildContext context) =>
                //                 const AddToCartAddress());
                //       },
                //       child: Container(
                //         padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                //         decoration: BoxDecoration(
                //           color: Colors.black,
                //           borderRadius: BorderRadius.circular(16),
                //         ),
                //         child: const Text(
                //           "CHANGE",
                //           style: TextStyle(
                //               color: Colors.white, fontWeight: FontWeight.bold),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 10),
                // const DottedLine(),
                // const SizedBox(height: 10),
                // Row(
                //   children: [
                //     Image.asset(
                //       "assets/images/cashondelivery.png",
                //       height: 25,
                //     ),
                //     const SizedBox(width: 10),
                //     const Text("Cash On Delivery"),
                //     const Spacer(),
                //     GestureDetector(
                //       onTap: () {
                //         showBottomSheet(
                //             context: context,
                //             builder: (BuildContext context) =>
                //                 const AddToCartPaymentSelection());
                //       },
                //       child: Container(
                //         padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                //         decoration: BoxDecoration(
                //           color: Colors.black,
                //           borderRadius: BorderRadius.circular(16),
                //         ),
                //         child: const Text(
                //           "CHANGE",
                //           style: TextStyle(
                //               color: Colors.white, fontWeight: FontWeight.bold),
                //         ),
                //       ),
                //     )
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AddToCartReceiptRow extends StatelessWidget {
  final Icon? icon;
  final String title;
  final String subtitle;
  final bool isTotal; // Add flag for highlighting total

  const AddToCartReceiptRow({
    super.key,
    required this.title,
    required this.subtitle,
    this.isTotal = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0), // Consistent padding
      child: Row(
        children: [
          icon ?? Container(),
          // const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: TextSize.small,

              fontWeight:
                  isTotal ? FontWeight.bold : FontWeight.w100, // Bold for total
              color: isTotal
                  ? Colors.black
                  : Colors.black, // Darker color for total
            ),
          ),
          const Spacer(),
          Text(
            subtitle,
            // overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: TextSize.small,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color:
                  isTotal ? Colors.blue : Colors.grey, // Highlight total amount
            ),
          ),
        ],
      ),
    );
  }
}

class AddToCartTitleRow extends StatelessWidget {
  final String title;
  final Icon icon;
  const AddToCartTitleRow({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        icon,
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15, // Increased font size for header
            // fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
