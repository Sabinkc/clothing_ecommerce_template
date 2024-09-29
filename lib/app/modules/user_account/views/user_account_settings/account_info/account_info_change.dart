// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:d_and_s/app/modules/reusable_widgets/TextFormFieldReusable.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class AccountInfoChange extends StatelessWidget {
  final String appBarTitlte;
  final String title;
  final String hintText;
  final Icon icon;

  final controller;
  final VoidCallback onclick;

  const AccountInfoChange({
    super.key,
    required this.appBarTitlte,
    required this.title,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.onclick,
  });

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
        child: Scaffold(
          appBar: AppBar(
            title: Text(appBarTitlte),
            backgroundColor: AppColors.lightSilver,
            centerTitle: false,
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: AppColors.lightSilver,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    title,
                    style: TextStyle(fontSize: TextSize.normal),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: hintText,
                    icon: icon,
                    textEditingController: controller,
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                      onTap: onclick,
                      child: const LargeButtonReusable(title: "Submit"))
                ],
              ),
            ),
          ),
        ),
      );
}

class AccountInfoChangePassword extends StatelessWidget {
  final String appBarTitlte;
  final String title;
  final String hintText;
  final Icon icon;
  final controller;
  final String confirmtitle;
  final String confirmhintText;
  final Icon confirmicon;
  final confirmcontroller;
  final VoidCallback onclick;

  const AccountInfoChangePassword({
    super.key,
    required this.appBarTitlte,
    required this.title,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.onclick,
    required this.confirmtitle,
    required this.confirmhintText,
    required this.confirmicon,
    required this.confirmcontroller,
  });

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
        child: Scaffold(
          appBar: AppBar(
            title: Text(appBarTitlte),
            backgroundColor: AppColors.lightSilver,
            centerTitle: false,
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: AppColors.lightSilver,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                   title,
                    style: TextStyle(fontSize: TextSize.normal),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    isObscure: true,
                    hint: hintText,
                    icon: icon,
                    textEditingController: controller,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    confirmtitle,
                    style: TextStyle(fontSize: TextSize.normal),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    isObscure: true,
                    hint: confirmhintText,
                    icon: confirmicon,
                    textEditingController: confirmcontroller,
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                      onTap: onclick,
                      child: const LargeButtonReusable(title: "Submit"))
                ],
              ),
            ),
          ),
        ),
      );
}
