import 'package:d_and_s/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../constants/colors.dart';
import '../../reusable_widgets/LargeButtonReusable.dart';
import '../../reusable_widgets/TextFormFieldReusable.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  final fullName = TextEditingController();
  final email = TextEditingController();
  final contactDetails = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
        gestures: [
          GestureType.onTap,
          GestureType.onPanUpdateDownDirection,
        ],
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                color: AppColors.lightSilver,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  color: AppColors.lightBlue, // Choose any color you want
                  width: double.infinity,
                  height: 400,
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      Center(
                        child: Text(
                          "Register Account",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Enter your Credentails",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              // White container on top of the other containers
              Positioned(
                top: 180,
                left: 25,
                right: 25,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Full Name",
                          style: TextStyle(
                              color: AppColors.textBlue,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        TextFormFieldReusable(
                          hint: 'Enter your full name',
                          icon: Icon(Icons.person),
                          textEditingController: fullName,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Email",
                          style: TextStyle(
                              color: AppColors.textBlue,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        TextFormFieldReusable(
                          hint: 'Enter your email',
                          icon: Icon(Icons.mail),
                          textEditingController: email,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Contact Details",
                          style: TextStyle(
                              color: AppColors.textBlue,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        TextFormFieldReusable(
                          hint: 'Enter your contact details',
                          icon: Icon(Icons.phone),
                          textEditingController: contactDetails,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Password",
                          style: TextStyle(
                              color: AppColors.textBlue,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        TextFormFieldReusable(
                          isObscure: true,
                          hint: 'Enter your password',
                          icon: Icon(Icons.password),
                          textEditingController: password,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Confirm Password",
                          style: TextStyle(
                              color: AppColors.textBlue,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        TextFormFieldReusable(
                          isObscure: true,
                          hint: 'ReEnter your Password',
                          icon: Icon(Icons.password),
                          textEditingController: confirmPassword,
                        ),
                        SizedBox(height: 30),

                        LargeButtonReusable(title: "Register"),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                  color: AppColors.silver,
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                Get.to(LoginView());
                              },
                              child: Text(
                                "Log in",
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
              ),
            ],
          ),
        ),
      );
}
