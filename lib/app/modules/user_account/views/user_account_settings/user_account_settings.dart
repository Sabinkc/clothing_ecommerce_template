// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/login/views/login_view.dart';
import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_settings/account_info/account_info.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_settings/account_info/account_info_change.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_settings/address.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_settings/feedback.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_settings/language.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_settings/message_settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserAccountSettings extends StatelessWidget {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  UserAccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: AppColors.lightSilver,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColors.lightSilver,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserAccountReusableContainer(
                  title: "Account Information",
                  icon: Icons.person,
                  onclick: () {
                    Get.to(AccountInfo());
                  },
                ),
                UserAccountReusableContainer(
                  title: "Message Settings",
                  icon: Icons.settings,
                  onclick: () {
                    Get.to(const MessageSettingsView());
                  },
                ),
                UserAccountReusableContainer(
                  title: "Address",
                  icon: Icons.location_on_rounded,
                  onclick: () {
                    Get.to(const AddressView());
                  },
                ),
                UserAccountReusableContainer(
                  title: "Language",
                  icon: Icons.language,
                  onclick: () {
                    Get.to(const Language());
                  },
                ),
                UserAccountReusableContainer(
                  title: "Feedback",
                  icon: Icons.feedback,
                  onclick: () {
                    Get.to(const FeedbackView());
                  },
                ),
                UserAccountReusableContainer(
                  title: "Conditions",
                  icon: Icons.feedback,
                  onclick: () {},
                  // onTap: () {},
                ),
                UserAccountReusableContainer(
                  title: "Request Account Deletion",
                  icon: Icons.delete,
                  onclick: () {
                    Get.to(
                      AccountInfoChangePassword(
                        appBarTitlte: "Account Deletion",
                        title:
                            "This action cannot be undone. \nAll your data will be permanently removed.",
                        hintText: "Enter your Password",
                        icon: const Icon(Icons.password),
                        controller: passwordController,
                        onclick: () {},
                        confirmtitle: "Re-Enter your Password",
                        confirmhintText: "*******",
                        confirmicon: const Icon(Icons.password),
                        confirmcontroller: confirmPasswordController,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                    onTap: () {
                      Get.offAll(const LoginView());
                    },
                    child: const LargeButtonReusable(title: "Logout"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserAccountReusableContainer extends StatelessWidget {
  final String title;
  final icon;
  final VoidCallback onclick;
  //add ontap here
  const UserAccountReusableContainer(
      {super.key,
      required this.title,
      required this.icon,
      required this.onclick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.grey.shade500,
              ),
              const SizedBox(width: 20),
              Text(
                title,
                style: TextStyle(
                  fontSize: TextSize.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
