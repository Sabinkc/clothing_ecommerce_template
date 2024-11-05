// ignore_for_file: file_names

import 'package:flutter/material.dart';


class CheckboxReusable extends StatelessWidget {
  final bool valueCheckBox;
  final void Function() checkboxFunc;
  const CheckboxReusable(
      {super.key, required this.checkboxFunc, required this.valueCheckBox});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 20,
        child: Checkbox(
          value: valueCheckBox,
          onChanged: (bool? value) {
            checkboxFunc();
          },
        ));
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<WidgetState> states) {
      const Set<WidgetState> interactiveStates = <WidgetState>{
        WidgetState.pressed,
        WidgetState.hovered,
        WidgetState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.blue;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: WidgetStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
