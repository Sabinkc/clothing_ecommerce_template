import 'package:d_and_s/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../../../constants/text_size.dart';
import '../../../../reusable_widgets/LargeButtonReusable.dart';
import '../../../../reusable_widgets/TextFormFieldReusable.dart';

class UserAccountTabsInfoLoginEdit extends StatelessWidget {
  final emailController = TextEditingController();
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();

  UserAccountTabsInfoLoginEdit({super.key});

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
        child: Scaffold(
          // backgroundColor: AppColors.lightSilver,
          backgroundColor: Colors.white,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            title: Text(
              "Edit Login Details",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: TextSize.normal,
              ),
            ),
            centerTitle: false,
            backgroundColor: AppColors.appbarBg,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: "Entern Your Email",
                    textEditingController: emailController,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Old Password",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: "Entern Your Old Password",
                    textEditingController: oldPasswordController,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "New Password",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: "Entern Your New Password",
                    textEditingController: newPasswordController,
                  ),
                  const SizedBox(height: 30),
                  const LargeButtonReusable(
                    title: "Save Changes",
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
