import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckboxReusable extends StatelessWidget {
  final bool valueCheckBox;
  final void Function() checkboxFunc;
  const CheckboxReusable(
      {super.key, required this.checkboxFunc, required this.valueCheckBox});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 20,
        child: Checkbox(
          value: valueCheckBox,
          onChanged: (bool? value) {
            checkboxFunc();
          },
        ));
  }
}
