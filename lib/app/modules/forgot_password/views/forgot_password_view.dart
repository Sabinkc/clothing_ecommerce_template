import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/forgot_password/views/otp_view.dart';
import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:d_and_s/app/modules/reusable_widgets/TextFormFieldReusable.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  final forgotPassword = TextEditingController();

  ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: TextSize.medium,
                  fontWeight: FontWeight.w700,
                  color: AppColors.titleColorGrey,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "Email",
                style: TextStyle(
                    fontSize: TextSize.small,
                    color: AppColors.titleColorGrey,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              TextFormFieldReusable(
                hint: "your_email@gmail.com",
                icon: const Icon(
                  Icons.mail,
                ),
                isObscure: true,
                textEditingController: forgotPassword,
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Get.to(const OTPView());
                },
                child: const LargeButtonReusable(
                  title: "Submit",
                  color: AppColors.buttonColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
