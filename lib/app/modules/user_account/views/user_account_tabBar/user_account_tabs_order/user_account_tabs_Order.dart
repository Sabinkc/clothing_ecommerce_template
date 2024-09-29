// ignore_for_file: file_names

import 'package:d_and_s/app/constants/text_size.dart';


import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabs_order/user_account_tabs_order_gridView.dart';
import 'package:flutter/material.dart';

class UserAccountTabsOrder extends StatelessWidget {
  const UserAccountTabsOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Orders",
            style: TextStyle(
              fontSize: TextSize.normal,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 20),
          // Container(child: Col,)
          // HomeSectionTabBarTabs(),
          UserAccountTabsOrderGridView(),
        ],
      ),
    );
  }
}
