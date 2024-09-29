import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class FeedbackView extends StatelessWidget {
  const FeedbackView({super.key});

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
          child: Scaffold(
        appBar: AppBar(
          title: const Text("Feedback"),
          backgroundColor: AppColors.lightSilver,
          centerTitle: false,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColors.lightSilver,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your Feedback",
                  style: TextStyle(fontSize: TextSize.normal),
                ),
                const SizedBox(height: 20),
                const TextField(
                  maxLength: 500,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "",
                    hintText: "Please write your feedback here",
                  ),
                ),
                const SizedBox(height: 20),
                const LargeButtonReusable(title: "Submit"),
              ],
            ),
          ),
        ),
      ));
}
