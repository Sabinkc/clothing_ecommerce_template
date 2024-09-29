// ignore_for_file: file_names

import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';

import 'package:flutter/material.dart';

class LargeButtonReusable extends StatelessWidget {
  final String title;
  final double? width;
  final Color? color;

  const LargeButtonReusable({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.color = AppColors.lightBlue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(6), color: color),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: TextSize.small,
              color: Colors.white,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
