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
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Column(
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
                        ],
                      )
                    ],
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
      ),
    );
  }
}
