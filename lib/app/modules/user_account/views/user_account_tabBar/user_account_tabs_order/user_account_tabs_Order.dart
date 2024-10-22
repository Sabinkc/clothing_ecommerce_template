// ignore_for_file: file_names

import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/user_account/controllers/user_account_controller.dart';

import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabs_order/user_account_tabs_order_gridView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserAccountTabsOrder extends StatelessWidget {
  final userAccController = Get.put(UserAccountController());
  UserAccountTabsOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Orders",
                style: TextStyle(
                  fontSize: TextSize.normal,
                  fontWeight: FontWeight.w700,
                  color: AppColors.titleColorGrey,
                ),
              ),
              Obx(
                () => GestureDetector(
                  onTap: () {
                    userAccController.changeListAndGrid.value =
                        !userAccController.changeListAndGrid.value;
                  },
                  child: userAccController.changeListAndGrid.value == true
                      ? const Icon(
                          Icons.grid_view_sharp,
                          color: AppColors.textColorGrey,
                        )
                      : const Icon(
                          Icons.list,
                          color: AppColors.titleColorGrey,
                        ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          UserAccountTabsOrderGridView(),
          // Obx(() {
          //   return userAccController.changeListAndGrid.value
          //       ? UserAccountTabsOrderGridView()
          //       : UserAccountTabsOrderListView();
          // }),
        ],
      ),
    );
  }
}
