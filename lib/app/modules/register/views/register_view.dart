import 'package:d_and_s/app/modules/login/controllers/login_controller.dart';
import 'package:d_and_s/app/modules/reusable_widgets/CheckBoxReusable.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../constants/colors.dart';

import '../../../constants/text_size.dart';
import '../../login/views/login_view.dart';
import '../../reusable_widgets/LargeButtonReusable.dart';
import '../../reusable_widgets/TextFormFieldReusable.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  final fullName = TextEditingController();
  final email = TextEditingController();
  final contactDetails = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final controllerLogin = Get.put(LoginController());
  RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
        gestures: const [
          GestureType.onTap,
          GestureType.onPanUpdateDownDirection,
        ],
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  Center(
                    child: Text(
                      "Register Account",
                      style: TextStyle(
                        color: AppColors.titleColorGrey,
                        fontSize: TextSize.big,
                        fontWeight: FontWeight.w700,
                        // color: AppColors.lightBlue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      "Enter your Credentails",
                      style: TextStyle(
                        fontSize: TextSize.small,
                        color: AppColors.textColorGrey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Container(
                  //   height: double.infinity,
                  //   width: double.infinity,
                  //   color: AppColors.lightSilver,
                  // ),
                  // const RegisterBlueContainer(), //THIS IS THE PORTION WHERE THE REGISTER ACCOUNT TEXT
                  // White container on top of the other containers
                  // RegisterWhiteSmallContainer(),
                  Text(
                    "Full Name",
                    style: TextStyle(
                        fontSize: TextSize.small,
                        color: AppColors.titleColorGrey,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: 'Enter your full name',
                    icon: const Icon(Icons.person),
                    textEditingController: fullName,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: TextSize.small,
                      color: AppColors.titleColorGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: 'Enter your email',
                    icon: const Icon(Icons.mail),
                    textEditingController: email,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Contact Details",
                    style: TextStyle(
                        fontSize: TextSize.small,
                        color: AppColors.titleColorGrey,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: 'Enter your contact details',
                    icon: const Icon(Icons.phone),
                    textEditingController: contactDetails,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Password",
                    style: TextStyle(
                        fontSize: TextSize.small,
                        color: AppColors.titleColorGrey,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    isObscure: true,
                    hint: 'Enter your password',
                    icon: const Icon(Icons.password),
                    textEditingController: password,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Min. 8 char, 1 upper & lowercase, a number & a special characte.",
                    style: TextStyle(
                        fontSize: TextSize.small,
                        color: AppColors.titleColorGrey,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                        fontSize: TextSize.small,
                        color: AppColors.titleColorGrey,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    isObscure: true,
                    hint: 'ReEnter your Password',
                    icon: const Icon(Icons.password),
                    textEditingController: confirmPassword,
                  ),
                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Obx(
                        () => CheckboxReusable(
                          checkboxFunc: () {
                            controllerLogin.toogleIsSelected();
                          },
                          valueCheckBox: controllerLogin.isSelected.value,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "By confirming you are agreeing our Privacy Policy & Terms of Condition",
                          style: TextStyle(
                              fontSize: TextSize.small,
                              color: AppColors.titleColorGrey,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 30),
                  const LargeButtonReusable(
                    title: "Register",
                    color: AppColors.buttonColor,
                    // color: AppColors.lightBlue,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            fontSize: TextSize.small,
                            color: AppColors.titleColorGrey,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Get.to(const LoginView());
                        },
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              fontSize: TextSize.small,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
