import 'package:d_and_s/app/modules/favourites/views/favourites_view.dart';
import 'package:d_and_s/app/modules/user_account/controllers/user_account_controller.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_myOrder/user_account_myOrder.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_others/user_account_others.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_settings/user_account_settings.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabs_info/user_account_tabs_Info.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabs_WishList.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabs_address/user_account_tabs_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/text_size.dart';
import '../../../home/views/home_tabBar/home_tabBar_tabs.dart';
import 'user_account_tabs_Order.dart';

class UserAccountTabBar extends StatelessWidget {
  final List<String> tabLabels = [
    "Personal Information",
    "Add Address",
    "Order History",
    "WishList",
  ];
  final userAccController = Get.put(UserAccountController());
  UserAccountTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tabLabels.length,
            itemBuilder: (BuildContext context, index) => GestureDetector(
              onTap: () {
                userAccController.tabBarIndex.value = index;
              },
              child: Obx(
                () => Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(16),
                    color: userAccController.tabBarIndex.value == index
                        ? Colors.black
                        // Color(0xff6B7280)
                        : Color(0xffF3F4F6),
                  ),
                  child: Text(
                    tabLabels[index],
                    style: TextStyle(
                      fontSize: TextSize.small,
                      color:
                          //  Colors.white,
                          userAccController.tabBarIndex.value == index
                              ? Colors.white
                              : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Obx(() => changeView())
      ],
    );
  }

  changeView() {
    if (userAccController.tabBarIndex.value == 0) {
      return UserAccountTabsInfo();
    } else if (userAccController.tabBarIndex.value == 1) {
      return UserAccountTabsAddress();
    } else if (userAccController.tabBarIndex.value == 2) {
      return UserAccountTabsOrder();
    } else {
      return UserAccountTabsWishList();
    }
  }
}
