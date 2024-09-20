
import 'package:d_and_s/app/modules/register/views/register_blue_container.dart';
import 'package:d_and_s/app/modules/register/views/register_white_small_container.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../constants/colors.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {


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
           RegisterBlueContainer(),//THIS IS THE PORTION WHERE THE REGISTER ACCOUNT TEXT
              // White container on top of the other containers
          RegisterWhiteSmallContainer(),
            ],
          ),
        ),
      );
}
