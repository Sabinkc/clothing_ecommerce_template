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
    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Receipt",
                  style: TextStyle(
                    fontSize: 20, // Increased font size for header
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                  height: 20), // Adds spacing between header and content
              AddToCartReceiptRow(
                title: "Amount",
                subtitle: "Rs ${controller.totalPrice.value}",
                icon: const Icon(
                  Icons.attach_money,
                  color: Colors.grey,
                ), // Money icon for amount
              ),
              const AddToCartReceiptRow(
                title: "Shipping Charge",
                subtitle: "Rs. 100",
                icon: Icon(
                  Icons.local_shipping,
                  color: Colors.grey,
                ), // Shipping icon
              ),
              AddToCartReceiptRow(
                title: "Total Amount",
                subtitle: "Rs ${controller.totalPrice.value + 100}",
                isTotal: true,
                icon: const Icon(
                  Icons.calculate,
                  color: Colors.grey,
                ), // Calculation icon for total
              ),
              const Divider(
                  height: 30, color: Colors.grey), // Adds a divider line
              const Center(
                child: Text(
                  "Info",
                  style: TextStyle(
                    fontSize: 20, // Increased font size for header
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const AddToCartReceiptRow(
                title: "User Name",
                subtitle: "Aman Shrestha",
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ), // Person icon for user name
              ),
              const AddToCartReceiptRow(
                title: "Contact Details",
                subtitle: "+977-9812345678",
                icon: Icon(
                  Icons.phone,
                  color: Colors.grey,
                ), // Phone icon for contact details
              ),
              const AddToCartReceiptRow(
                title: "Location",
                subtitle: "Kuleshwor, Kathmandu",
                icon: Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ), // Location pin icon
              ),
              const Divider(
                  height: 30, color: Colors.grey), // Adds a divider line
              const Center(
                child: Text(
                  "Payment",
                  style: TextStyle(
                    fontSize: 20, // Increased font size for header
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const AddToCartReceiptRow(
                title: "Cash On Delivery",
                subtitle: "Aman Shrestha",
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ), // Person icon for user name
              ),
            ],
          ),
        ),
      ),
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
              fontSize: 16,
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
            style: TextStyle(
              fontSize: 16,
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
