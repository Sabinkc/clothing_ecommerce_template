import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../constants/colors.dart';
import '../../login/views/login_view.dart';
import '../../reusable_widgets/LargeButtonReusable.dart';
import '../../reusable_widgets/TextFormFieldReusable.dart';

class RegisterWhiteSmallContainer extends StatelessWidget {
  final fullName = TextEditingController();
  final email = TextEditingController();
  final contactDetails = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  RegisterWhiteSmallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Adaptive.h(21),
      left: 25,
      right: 25,
      child: Container(
        height: Adaptive.h(60),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Full Name",
                            style: TextStyle(
                                color: AppColors.textBlue,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          TextFormFieldReusable(
                            hint: 'Enter your full name',
                            icon: const Icon(Icons.person),
                            textEditingController: fullName,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Email",
                            style: TextStyle(
                                color: AppColors.textBlue,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          TextFormFieldReusable(
                            hint: 'Enter your email',
                            icon: const Icon(Icons.mail),
                            textEditingController: email,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Contact Details",
                            style: TextStyle(
                                color: AppColors.textBlue,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          TextFormFieldReusable(
                            hint: 'Enter your contact details',
                            icon: const Icon(Icons.phone),
                            textEditingController: contactDetails,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Password",
                            style: TextStyle(
                                color: AppColors.textBlue,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          TextFormFieldReusable(
                            isObscure: true,
                            hint: 'Enter your password',
                            icon: const Icon(Icons.password),
                            textEditingController: password,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Confirm Password",
                            style: TextStyle(
                                color: AppColors.textBlue,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          TextFormFieldReusable(
                            isObscure: true,
                            hint: 'ReEnter your Password',
                            icon: const Icon(Icons.password),
                            textEditingController: confirmPassword,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  const LargeButtonReusable(title: "Register"),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: AppColors.silver,
                            fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Get.to(const LoginView());
                        },
                        child: const Text(
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
      ),
    );
  }
}
