// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddToCartPaymentSelection extends StatelessWidget {
  const AddToCartPaymentSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
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
            const Center(
              child: Text(
                "Select Your Payment Method",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Cash on Delivery Option
            _paymentMethodTile(
              context,
              icon: Image.asset("assets/images/cashondelivery.png", height: 30),
              title: "Cash On Delivery",
              subtitle: "Pay when you receive the product",
              trailingIcon: Icons.arrow_forward_ios,
              onTap: () {
                // Handle payment selection
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
              trailingIcon: Icons.arrow_forward_ios,
              onTap: () {
                // Handle payment selection
              },
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  Widget _paymentMethodTile(
    BuildContext context, {
    required Widget icon,
    required String title,
    required String subtitle,
    required IconData trailingIcon,
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
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Icon(
              trailingIcon,
              size: 18,
              color: Colors.grey[600],
            ),
          ],
        ),
      ),
    );
  }
}
