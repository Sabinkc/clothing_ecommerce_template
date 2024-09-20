import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/reusable_widgets/DottedLine.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddToCartReceipt extends StatelessWidget {
  final controller = Get.put(AddToCartController());
  AddToCartReceipt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AddToCartTitleRow(
          title: "Receipt",
          icon: Icon(
            Icons.receipt_outlined,
            color: Colors.green,
          ),
        ),
        const SizedBox(height: 20), // Adds spacing between header and content
        AddToCartReceiptRow(
          title: "Amount",
          subtitle: "Rs ${controller.totalPrice.value}",
          icon: const Icon(
            Icons.attach_money_outlined,
            color: Colors.grey,
          ), // Money icon for amount
        ),
        const AddToCartReceiptRow(
          title: "Shipping Charge",
          subtitle: "Rs. 100",
          icon: Icon(
            Icons.local_shipping_outlined,
            color: Colors.grey,
          ), // Shipping icon
        ),
        AddToCartReceiptRow(
          title: "Total Amount",
          subtitle: "Rs ${controller.totalPrice.value + 100}",
          isTotal: true,
          icon: const Icon(
            Icons.calculate_outlined,
            // color: Colors.green,
          ), // Calculation icon for total
        ),
        DottedLine(),
        AddToCartTitleRow(
          title: "Info",
          icon: Icon(
            Icons.info_outline,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 20),
        const AddToCartReceiptRow(
          title: "User Name",
          subtitle: "Aman Shrestha",
          icon: Icon(
            Icons.person_outline,
            color: Colors.grey,
          ), // Person icon for user name
        ),
        const AddToCartReceiptRow(
          title: "Contact Details",
          subtitle: "+977-9812345678",
          icon: Icon(
            Icons.phone_outlined,
            color: Colors.grey,
          ), // Phone icon for contact details
        ),
        const AddToCartReceiptRow(
          title: "Location",
          subtitle: "Kuleshwor, Kathmandu",
          icon: Icon(
            Icons.location_on_outlined,
            color: Colors.grey,
          ), // Location pin icon
        ),
        DottedLine(),
        AddToCartTitleRow(
          title: "Payment",
          icon: Icon(
            Icons.payment,
            color: Colors.green,
          ),
        ),
        const SizedBox(height: 20),
        const AddToCartReceiptRow(
          title: "Cash On Delivery",
          subtitle: "Aman Shrestha",
          icon: Icon(
            Icons.person_outline,
            color: Colors.grey,
          ), // Person icon for user name
        ),
      ],
    );
  }
}

class AddToCartReceiptRow extends StatelessWidget {
  final Icon icon;
  final String title;
  final String subtitle;
  final bool isTotal; // Add flag for highlighting total

  const AddToCartReceiptRow({
    super.key,
    required this.title,
    required this.subtitle,
    this.isTotal = false,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0), // Consistent padding
      child: Row(
        children: [
          icon,
          const SizedBox(width: 10),
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
              color: isTotal
                  ? Colors.redAccent
                  : Colors.grey, // Highlight total amount
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
  AddToCartTitleRow({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        icon,
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 15, // Increased font size for header
            // fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
