import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/login/views/login_blue_container.dart';
import 'package:d_and_s/app/modules/login/views/login_white_small_container.dart';
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


  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
        gestures: [
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
                    color: AppColors.lightSilver,
                  ),

                  LoginBlueContainer(),//THIS IS THE PART WHERE THE SIGN IN TO YOUR ACCOUNT TEXT SECTION

                  LoginWhiteSmallContainer(),// White container on top of the other containers
                ],
              ),
            ),
          ),
        ),
      );
}
