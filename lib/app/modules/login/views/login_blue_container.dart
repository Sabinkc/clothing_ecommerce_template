import 'package:d_and_s/app/constants/text_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../constants/colors.dart';

class LoginBlueContainer extends StatelessWidget {
  LoginBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        color: AppColors.lightBlue, // Choose any color you want
        width: double.infinity,
        height: Adaptive.h(50),
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: Text(
                "Sign in to your\n     Account",
                style: TextStyle(
                  fontSize: TextSize.big,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Enter your email and password to log in",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
