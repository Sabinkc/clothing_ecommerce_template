import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/modules/home/views/home_tabBar/home_tabBar_tabs.dart';
import 'package:flutter/material.dart';

import '../../../../constants/text_size.dart';

class HomeTabBar extends StatelessWidget {
  final List<String> tabLabels = [
    "Home",
    "Settings",
    "Profile",
    "About",
    "Contact",
    "Home",
  ];


  HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Column(
        children: [
          // TabBar(
          //   indicatorSize: TabBarIndicatorSize.tab,
          //   labelPadding: EdgeInsets.fromLTRB(0, 0, 15, 0),
          //   // labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
          //   // indicatorPadding: EdgeInsets.zero,
          //   isScrollable: true,
          //   tabs: [
          //     Text(
          //       "hi",
          //       style: TextStyle(fontSize: TextSize.normal),
          //     ),
          //   ]
          // ),
          TabBar(
            // indicatorSize: TabBarIndicatorSize.tab,

            labelPadding: EdgeInsets.fromLTRB(0, 0, 25, 0),
            isScrollable: true,
            tabs: [
              Text(
                "Hoodies",
                style: TextStyle(
                  fontSize: TextSize.normal,
                ),
              ),
              Text(
                "Shoes",
                style: TextStyle(
                  fontSize: TextSize.normal,
                ),
              ),
              Text(
                "Jackets",
                style: TextStyle(
                  fontSize: TextSize.normal,
                ),
              ),
              Text(
                "Sweat Shirts",
                style: TextStyle(
                  fontSize: TextSize.normal,
                ),
              ),
              Text(
                "Suits",
                style: TextStyle(
                  fontSize: TextSize.normal,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: TabBarView(
              children: [
                HomeTabBarTabs(),
                HomeTabBarTabs(),
                HomeTabBarTabs(),
                HomeTabBarTabs(),
                HomeTabBarTabs(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
