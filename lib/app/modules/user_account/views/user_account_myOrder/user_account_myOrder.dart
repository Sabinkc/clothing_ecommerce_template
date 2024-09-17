import 'package:d_and_s/app/modules/login/views/login_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            Spacer(),
            Text(
              "View All Orders >",
              style: TextStyle(
                fontSize: TextSize.small,
                color: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
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
        SizedBox(height: 20),
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
  final icon;
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
      child: Container(
        // margin: Ed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.red,
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: TextSize.small,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
