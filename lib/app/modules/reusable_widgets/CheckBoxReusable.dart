import 'package:flutter/material.dart';

class CheckboxReusable extends StatefulWidget {
   CheckboxReusable({super.key});

  @override
  State<CheckboxReusable> createState() => _CheckboxReusableState();
}

class _CheckboxReusableState extends State<CheckboxReusable> {
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      // tristate: true,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}



