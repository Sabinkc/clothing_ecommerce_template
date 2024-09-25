import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../../../constants/text_size.dart';
import '../../../../reusable_widgets/LargeButtonReusable.dart';
import '../../../../reusable_widgets/TextFormFieldReusable.dart';

class UserAccountTabsInfoDetail extends StatelessWidget {
  final fullNameController = TextEditingController();
  UserAccountTabsInfoDetail({super.key});

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
        child: Scaffold(
          // backgroundColor: AppColors.lightSilver,
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Edit Your Details"),
            centerTitle: false,
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Full Name",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: "Entern Your Full Name",
                    textEditingController: fullNameController,
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Date Of Birth",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10),
                  DOBInputField(
                    inputDecoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            8.0), // You can customize the radius
                        borderSide: BorderSide(
                          color: Colors.black, // Customize border color
                          width: 1.0, // Customize border width
                        ),
                      ),
                    ),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    showLabel: true,
                    dateFormatType: DateFormatType.DDMMYYYY,
                    autovalidateMode: AutovalidateMode.always,
                  ),
                  // TextFormFieldReusable(
                  //   hint: "Entern Your Old Password",
                  //   textEditingController: oldPasswordController,
                  // ),
                  SizedBox(height: 10),
                  Text(
                    "Gender",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10),
                  DropdownMenuExample(),
                  SizedBox(height: 30),
                  LargeButtonReusable(
                    title: "Save Changes",
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ),
      );
}

class DropdownMenuExample extends StatefulWidget {
  final List<String> list = <String>['Male', 'Female'];

  DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.list
        .first; // Initialize the dropdownValue with the first item from the list
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DropdownMenu<String>(
      width: size.width * 0.9,
      // width: 400,
      initialSelection: widget.list.first, // Access the list through widget
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries:
          widget.list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
