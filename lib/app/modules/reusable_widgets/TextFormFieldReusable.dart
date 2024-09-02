import 'package:d_and_s/app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldReusable extends StatelessWidget {
  final String hint;
  final Icon icon;
  bool isObscure;
  final TextEditingController textEditingController;

   TextFormFieldReusable(
      {super.key,
        this.isObscure = false, required this.hint, required this.icon, required this.textEditingController,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        child: TextFormField(
            controller: textEditingController,
            obscureText: isObscure,
            decoration: InputDecoration(
              hintText: hint,
              prefixIcon: icon,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide:
                    const BorderSide(width: 1, color: AppColors.lightBlue),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(width: 1, color: Colors.red),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(0xffAEAEAE),
                ),

                // // labelText: 'Tap to show the keyboard',
              ),
            )));
  }
}
