// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../../../constants/text_size.dart';
import '../../../../reusable_widgets/LargeButtonReusable.dart';
import '../../../../reusable_widgets/TextFormFieldReusable.dart';

class UserAccountAddAddress extends StatelessWidget {
  final fullNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final countryController = TextEditingController();
  final phoneController = TextEditingController();
  UserAccountAddAddress({super.key});

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
        child: Scaffold(
          // backgroundColor: AppColors.lightSilver,
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text("Add Your Details"),
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
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: "Entern Your Full Name",
                    textEditingController: fullNameController,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Address",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: "Entern Your Address",
                    textEditingController: addressController,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "City",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: "Entern Your City",
                    textEditingController: cityController,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "State/Province",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: "Entern Your State/Province",
                    textEditingController: stateController,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Zip Code",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: "Entern Your Zip Code",
                    textEditingController: zipCodeController,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Country",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: "Entern Your Country",
                    textEditingController: countryController,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormFieldReusable(
                    hint: "Entern Your Phone Number",
                    textEditingController: phoneController,
                  ),
                  const SizedBox(height: 30),
                  const LargeButtonReusable(
                    title: "Add",
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
