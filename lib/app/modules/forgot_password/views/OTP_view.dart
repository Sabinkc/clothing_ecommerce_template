import 'package:d_and_s/app/modules/forgot_password/views/change_password.dart';
import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../constants/text_size.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
        child: Scaffold(
          appBar: AppBar(),
          body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Verify Account",
                  style: TextStyle(fontSize: TextSize.big),
                ),
                SizedBox(height: 30),
                Text(
                  "Enter Verification Code",
                  style: TextStyle(
                      fontSize: TextSize.normal, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "We've sent a cond to John@example.com",
                  style: TextStyle(fontSize: TextSize.normal),
                ),
                SizedBox(height: 20),
                OtpTextField(
                  numberOfFields: 4,
                  fieldWidth: 50,

                  margin: EdgeInsets.only(right: 20),
                  borderColor: Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        });
                  }, // end onSubmit
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't receive Code? ",
                      style: TextStyle(fontSize: TextSize.normal),
                    ),
                    Text(
                      "Click to resend",
                      style: TextStyle(
                          fontSize: TextSize.normal, color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Center(
                        child: Text("CANCEL"),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Get.to(ChangePassword());
                      },
                      child: LargeButtonReusable(
                        color: Colors.black,
                        title: "VERIFY",
                        width: 150,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
}
