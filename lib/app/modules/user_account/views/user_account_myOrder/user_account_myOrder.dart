import 'package:flutter/material.dart';

import '../../../../constants/text_size.dart';

class UserAccountMyOrder extends StatelessWidget {
  const UserAccountMyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "My Order",
              style: TextStyle(
                fontSize: TextSize.normal,
              ),
            ),
            const Spacer(),
            Text(
              "View All Orders >",
              style: TextStyle(
                fontSize: TextSize.small,
                color: Colors.green,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UserAccountMyOrderReusableColumn(
              title: "To Pay",
              icon: Icons.payment,
              ontap: () {},
            ),
            UserAccountMyOrderReusableColumn(
              title: "To Ship",
              icon: Icons.local_shipping,
              ontap: () {},
            ),
            UserAccountMyOrderReusableColumn(
              title: "To Receive",
              icon: Icons.move_to_inbox,
              ontap: () {},
            ),
            UserAccountMyOrderReusableColumn(
              title: "To Review",
              icon: Icons.reviews,
              ontap: () {},
            ),
          ],
        ),
        const SizedBox(height: 20),
        UserAccountMyOrderReusableColumn(
          title: "Return\nCancel",
          icon: Icons.assignment_return,
          ontap: () {},
        ),
      ],
    );
  }
}

class UserAccountMyOrderReusableColumn extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback ontap;
  const UserAccountMyOrderReusableColumn(
      {super.key,
      required this.title,
      required this.icon,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.red,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: TextSize.small,
            ),
          ),
        ],
      ),
    );
  }
}
