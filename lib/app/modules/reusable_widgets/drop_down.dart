import 'package:flutter/material.dart';

import '../../constants/text_size.dart';

class DropDownReusable extends StatefulWidget {
  final List<String>
      dropDownValues; // Specify the type as List<String> for type safety
  final String dropDownSelectedValue;

  const DropDownReusable({
    super.key,
    required this.dropDownValues,
    required this.dropDownSelectedValue,
  });

  @override
  State<DropDownReusable> createState() => _DropDownReusableState();
}

class _DropDownReusableState extends State<DropDownReusable> {
  late String _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption =
        widget.dropDownSelectedValue; // Initialize with the passed value
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption, // Current selected item from the passed value
      items: widget.dropDownValues.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(fontSize: TextSize.small),
          ),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          _selectedOption = newValue!; // Update the selected option
        });
      },
    );
  }
}
