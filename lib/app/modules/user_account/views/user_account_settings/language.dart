import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/reusable_widgets/CheckBoxReusable.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Language"),
        backgroundColor: AppColors.lightSilver,
        centerTitle: false,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.lightSilver,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CheckboxExample(),
                Text(
                  "ENGLISH",
                  style: TextStyle(fontSize: TextSize.normal),
                ),
              ],
            ),
            Row(
              children: [
                const CheckboxExample(),
                Text(
                  "NEPALI",
                  style: TextStyle(fontSize: TextSize.normal),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
