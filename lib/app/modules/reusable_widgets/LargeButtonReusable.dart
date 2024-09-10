import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LargeButtonReusable extends StatelessWidget {
  final String title;
  final double? width;

  const LargeButtonReusable({
    super.key,
    required this.title,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: AppColors.lightBlue),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: TextSize.normal,
              color: Colors.white,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
