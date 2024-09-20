import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';

import 'package:d_and_s/app/modules/user_account/views/user_account_settings/account_info/account_info_change.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountInfo extends StatelessWidget {
  final fullNameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final phoneNoController = TextEditingController();
  final emailController = TextEditingController();
  AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Information"),
        centerTitle: false,
        backgroundColor: AppColors.lightSilver,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.lightSilver,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Change Picture",
                  style: TextStyle(fontSize: TextSize.normal),
                ),
              ),
              SizedBox(height: 20),
              AccountInfoReusableContainer(
                title: "Full Name",
                subtitle: 'Aman Shrestha',
                onclick: () {
                  Get.to(
                    AccountInfoChange(
                      appBarTitlte: 'Edit Full Name',
                      title: 'Enter New Name',
                      hintText: 'ram',
                      icon: Icon(Icons.person),
                      controller: fullNameController,
                      onclick: () {},
                    ),
                  );
                },
              ),
              AccountInfoReusableContainer(
                title: "Password",
                subtitle: '#######',
                onclick: () {
                  Get.to(
                    AccountInfoChangePassword(
                      appBarTitlte: 'Change Password',
                      title: 'Enter New Password',
                      hintText: '*******',
                      icon: Icon(Icons.password),
                      controller: passwordController,
                      onclick: () {},
                      confirmtitle: "Re-Enter Your Password",
                      confirmhintText: "*******",
                      confirmicon: Icon(Icons.password),
                      confirmcontroller: confirmpasswordController,
                    ),
                  );
                },
              ),
              AccountInfoReusableContainer(
                title: "Phone No.",
                subtitle: '+977-1234567890',
                onclick: () {
                  Get.to(
                    AccountInfoChange(
                      appBarTitlte: 'Edit Phone Number',
                      title: 'Enter New Phone Number',
                      hintText: '1234567890',
                      icon: Icon(Icons.phone),
                      controller: phoneNoController,
                      onclick: () {},
                    ),
                  );
                },
              ),
              AccountInfoReusableContainer(
                title: "Email",
                subtitle: 'aman@gmail.com',
                onclick: () {
                  Get.to(
                    AccountInfoChange(
                      appBarTitlte: 'Edit Email',
                      title: 'Enter New Email',
                      hintText: 'ram@gmail.com',
                      icon: Icon(Icons.email),
                      controller: emailController,
                      onclick: () {},
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AccountInfoReusableContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onclick;

  const AccountInfoReusableContainer(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.onclick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: TextSize.small,
                ),
              ),
              Text(
                subtitle + " >",
                style: TextStyle(fontSize: TextSize.small, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
