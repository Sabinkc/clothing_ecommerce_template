import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/register/views/register_view.dart';
import 'package:d_and_s/app/modules/reusable_widgets/CheckBoxReusable.dart';
import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:d_and_s/app/modules/reusable_widgets/TextFormFieldReusable.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../constants/colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final email = TextEditingController();
  final password = TextEditingController();

  LoginView({Key? key}) : super(key: key);

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
                      SizedBox(height: MediaQuery.of(context).size.height*0.1
                      ),
                      Center(
                        child: Text(
                          "Sign in to your\n     Account",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Enter your email and password to log in",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              // White container on top of the other containers
              Positioned(
                top: 280,
                left: 25,
                right: 25,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                              color: AppColors.textBlue,
                              fontWeight: FontWeight.w600),
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
                              color: AppColors.textBlue,
                              fontWeight: FontWeight.w600),
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
                                  color: AppColors.silver,
                                  fontWeight: FontWeight.w900),
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
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  color: AppColors.silver,
                                  fontWeight: FontWeight.w900),
                            ),
                              SizedBox(width: 10),
                            GestureDetector(
                              onTap: (){
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
              ),
            ],
          ),
        ),
      );
}
