// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../../../constants/text_size.dart';
import '../../../../reusable_widgets/LargeButtonReusable.dart';
import '../../../../reusable_widgets/TextFormFieldReusable.dart';

class UserAccountEditAddress extends StatelessWidget {
  final fullNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final countryController = TextEditingController();
  final phoneController = TextEditingController();
  UserAccountEditAddress({super.key});

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
        child: Scaffold(
          // backgroundColor: AppColors.lightSilver,
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text("Edit Your Details"),
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
                    hint: "Ram Shrestha",
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
                    hint: "Kuleshwor",
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
                    hint: "Kathmandu",
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
                    hint: "Bagmati",
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
                    hint: "11111",
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
                    hint: "Nepal",
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
                    hint: "+977-1234567890",
                    textEditingController: phoneController,
                  ),
                  const SizedBox(height: 30),
                  const LargeButtonReusable(
                    title: "Update",
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
