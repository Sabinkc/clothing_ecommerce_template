import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/home/views/home_section_tabBar/home_section_tabBar.dart';
import 'package:d_and_s/app/modules/home/views/home_section_tabBar/home_section_tabBar_tabs.dart';
import 'package:flutter/material.dart';

class UserAccountTabsOrder extends StatelessWidget {
  const UserAccountTabsOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   "My Orders",
          //   style: TextStyle(
          //     fontSize: TextSize.normal,
          //     fontWeight: FontWeight.w700,
          //   ),
          // ),
          // SizedBox(height: 20),
          // Container(child: Col,)
          HomeSectionTabBarTabs(),
        ],
      ),
    );
  }
}
