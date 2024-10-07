
import 'package:flutter/material.dart';

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
                  fontWeight: FontWeight.w900,
                  // color: AppColors.lightBlue,
                ),
              ),
              const SizedBox(height: 40),
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
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {},
                child: const LargeButtonReusable(
                  title: "Submit",
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
