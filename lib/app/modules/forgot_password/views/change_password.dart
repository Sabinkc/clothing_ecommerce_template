import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_size.dart';
import '../../reusable_widgets/LargeButtonReusable.dart';
import '../../reusable_widgets/TextFormFieldReusable.dart';

class ChangePassword extends StatelessWidget {
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Change Password",
                style: TextStyle(
                    fontSize: TextSize.medium,
                    color: AppColors.titleColorGrey,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 40),
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
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {},
                child: const LargeButtonReusable(
                  title: "Submit",
                  color: AppColors.buttonColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
