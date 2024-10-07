import 'package:d_and_s/app/modules/bottom_navigation/buttom_navigation.dart';
import 'package:d_and_s/app/modules/forgot_password/views/forgot_password_view.dart';

import 'package:d_and_s/app/modules/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../constants/colors.dart';
import '../../register/views/register_view.dart';
import '../../reusable_widgets/CheckBoxReusable.dart';
import '../../reusable_widgets/LargeButtonReusable.dart';
import '../../reusable_widgets/TextFormFieldReusable.dart';

class LoginWhiteSmallContainer extends StatelessWidget {
  final controller = Get.put(LoginController());
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
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Email",
                style: TextStyle(
                    color: AppColors.lightBlue, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              TextFormFieldReusable(
                hint: 'Enter your email',
                icon: const Icon(Icons.person),
                textEditingController: email,
              ),
              const SizedBox(height: 10),
              const Text(
                "Password",
                style: TextStyle(
                    color: AppColors.lightBlue, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              TextFormFieldReusable(
                isObscure: true,
                hint: 'Enter your Password',
                icon: const Icon(Icons.password),
                textEditingController: password,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Obx(
                    () => CheckboxReusable(
                      checkboxFunc: () {
                        controller.toogleIsSelected();
                      },
                      valueCheckBox: controller.isSelected.value,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "Remember me",
                    style: TextStyle(
                        color: AppColors.silver, fontWeight: FontWeight.w900),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        ForgotPasswordView(),
                        transition: Transition
                            .leftToRightWithFade, // Professional fade-in effect
                        duration: const Duration(
                            milliseconds:
                                500), // Smooth duration for the transition
                        curve: Curves
                            .easeInOut, // Adds smoothness with easing in and out
                      );
                    },
                    child: const Text(
                      "Forgot Password ?",
                      style: TextStyle(
                          color: AppColors.lightBlue,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => Get.to(
                        const BottomNavBar(),
                        transition: Transition
                            .leftToRightWithFade, // Professional fade-in effect
                        duration: const Duration(
                            milliseconds:
                                500), // Smooth duration for the transition
                        curve: Curves
                            .easeInOut, // Adds smoothness with easing in and out
                      ),
                  child: const LargeButtonReusable(
                    title: "Log in",
                    color: AppColors.lightBlue,
                  )),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: AppColors.silver, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        RegisterView(),
                        transition: Transition
                            .leftToRightWithFade, // Professional fade-in effect
                        duration: const Duration(
                            milliseconds:
                                500), // Smooth duration for the transition
                        curve: Curves
                            .easeInOut, // Adds smoothness with easing in and out
                      );
                    },
                    child: const Text(
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
