import 'package:d_and_s/app/modules/login/views/login_blue_container.dart';
import 'package:d_and_s/app/modules/login/views/login_white_small_container.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../constants/colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
        gestures: const [
          GestureType.onTap,
          GestureType.onPanUpdateDownDirection,
        ],
        child: Scaffold(
          body: Container(
            color: AppColors.lightBlue,
            child: SafeArea(
              top: true,
              bottom: false,
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),

                  const LoginBlueContainer(), //THIS IS THE PART WHERE THE SIGN IN TO YOUR ACCOUNT TEXT SECTION

                  LoginWhiteSmallContainer(), // White container on top of the other containers
                ],
              ),
            ),
          ),
        ),
      );
}
