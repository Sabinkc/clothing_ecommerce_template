import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_container.dart';

import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_account_controller.dart';

class UserAccountView extends GetView<UserAccountController> {
  const UserAccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightSilver,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.lightSilver,
          body: Container(
            padding: const EdgeInsets.all(20),
            // color: Colors.white,

            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserAccountContainer(),
                  const SizedBox(height: 20),
                  Divider(thickness: 1, color: Colors.grey.shade300),
                  const SizedBox(height: 20),
                  UserAccountTabBar(),
                  // MY ORDER BEGINS FROM HERE
                  // UserAccountMyOrder(),
                  // SizedBox(height: 20),
                  // Divider(thickness: 1, color: Colors.grey.shade300),
                  // SizedBox(height: 20),
                  // UserAccountOthers(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
