// ignore_for_file: file_names

import 'package:d_and_s/app/constants/colors.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldReusable extends StatelessWidget {
  final double? widthsize;
  final String hint;
  Icon? icon;
  Icon? suffixIcon;
  bool isObscure;
  final TextEditingController textEditingController;

  TextFormFieldReusable({
    super.key,
    this.isObscure = false,
    required this.hint,
    this.icon,
    required this.textEditingController,
    this.suffixIcon,
    this.widthsize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: widthsize,
      child: TextFormField(
        controller: textEditingController,
        obscureText: isObscure,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: icon,
          // suffixIcon: GestureDetector(
          //     onTap: () {
          //       // Get.to(FilterView());
          //       showModalBottomSheet(
          //           context: context,
          //           builder: (BuildContext context) => FilterView());
          //     },
          //     child: suffixIcon),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(width: 1, color: AppColors.lightBlue),
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
        ),
      ),
    );
  }
}
