import 'package:flutter/material.dart';

import '../../../../constants/text_size.dart';
import '../user_account_myOrder/user_account_myorder.dart';

class UserAccountOthers extends StatelessWidget {
  const UserAccountOthers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Others",
          style: TextStyle(
            fontSize: TextSize.normal,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UserAccountMyOrderReusableColumn(
              title: "My Messages",
              icon: Icons.message,
              ontap: () {},
            ),
            UserAccountMyOrderReusableColumn(
              title: "My Reviews",
              icon: Icons.reviews,
              ontap: () {},
            ),
            UserAccountMyOrderReusableColumn(
              title: "Payent Option",
              icon: Icons.move_to_inbox,
              ontap: () {},
            ),
            UserAccountMyOrderReusableColumn(
              title: "FAQs",
              icon: Icons.info,
              ontap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
