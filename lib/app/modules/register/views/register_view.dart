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
                        fontSize: TextSize.big,
                        fontWeight: FontWeight.w900,
                        color: AppColors.lightBlue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      "Enter your Credentails",
                      style: TextStyle(color: AppColors.lightBlue),
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
                  const Text(
                    "Full Name",
                    style: TextStyle(
                        // color: AppColors.lightBlue,
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
                        // color: AppColors.lightBlue,
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
                        // color: AppColors.lightBlue,
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
                        // color: AppColors.lightBlue,
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
                      "Min. 8 char, 1 upper & lowercase, a number & a special characte."),
                  const SizedBox(height: 10),
                  const Text(
                    "Confirm Password",
                    style: TextStyle(
                        // color: AppColors.lightBlue,
                        fontWeight: FontWeight.w600),
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
                      const Expanded(
                        child: Text(
                            "By confirming you are agreeing our Privacy Policy & Terms of Condition"),
                      )
                    ],
                  ),

                  const SizedBox(height: 30),
                  const LargeButtonReusable(
                    title: "Register",
                    // color: AppColors.lightBlue,
                  ),
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
      );
}
