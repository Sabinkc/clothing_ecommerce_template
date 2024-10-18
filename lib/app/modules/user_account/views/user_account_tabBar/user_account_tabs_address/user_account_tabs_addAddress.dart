// ignore_for_file: file_names, must_be_immutable

import 'package:d_and_s/app/modules/user_account/controllers/user_account_controller.dart';

import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabs_address/textfield_city.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabs_address/textfield_country.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabs_address/textfield_state.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabs_address/textfield_zone.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../../../constants/text_size.dart';
import '../../../../../data/location.dart';
import '../../../../reusable_widgets/LargeButtonReusable.dart';
import '../../../../reusable_widgets/TextFormFieldReusable.dart';

class UserAccountAddAddress extends StatelessWidget {
  final controllerUserAcc = Get.put(UserAccountController());
  var country = ["Nepal"];
  final zoneController = TextEditingController();
  final fullNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final countryController = TextEditingController();
  final phoneController = TextEditingController();
  UserAccountAddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
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
                  "Country",
                  style: TextStyle(
                    fontSize: TextSize.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                TextFieldCountry(),
                const SizedBox(height: 30),
                Text(
                  "State/Province",
                  style: TextStyle(
                    fontSize: TextSize.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                TextFieldState(),
                const SizedBox(height: 30),
                Text(
                  "City",
                  style: TextStyle(
                    fontSize: TextSize.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                TextFieldCity(),
                const SizedBox(height: 30),
                Text(
                  "Zone",
                  style: TextStyle(
                    fontSize: TextSize.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                TextFieldZone(),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
