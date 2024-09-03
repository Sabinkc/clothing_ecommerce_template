import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../constants/colors.dart';
import '../../register/views/register_view.dart';
import '../../reusable_widgets/CheckBoxReusable.dart';
import '../../reusable_widgets/LargeButtonReusable.dart';
import '../../reusable_widgets/TextFormFieldReusable.dart';

class LoginWhiteSmallContainer extends StatelessWidget {
  final email = TextEditingController();
  final password = TextEditingController();

  LoginWhiteSmallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Adaptive.h(23),
      left: 25,
      right: 25,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email",
                style: TextStyle(
                    color: AppColors.textBlue, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              TextFormFieldReusable(
                hint: 'Enter your email',
                icon: Icon(Icons.person),
                textEditingController: email,
              ),
              SizedBox(height: 10),
              Text(
                "Password",
                style: TextStyle(
                    color: AppColors.textBlue, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              TextFormFieldReusable(
                isObscure: true,
                hint: 'Enter your Password',
                icon: Icon(Icons.password),
                textEditingController: password,
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CheckboxReusable(),
                  Text(
                    "Remember me",
                    style: TextStyle(
                        color: AppColors.silver, fontWeight: FontWeight.w900),
                  ),
                  Spacer(),
                  Text(
                    "Forgot Password ?",
                    style: TextStyle(
                        color: AppColors.lightBlue,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              SizedBox(height: 20),
              LargeButtonReusable(title: "Log in"),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: AppColors.silver, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Get.to(RegisterView());
                    },
                    child: Text(
                      "Sign UP",
                      style: TextStyle(
                          color: AppColors.lightBlue,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
