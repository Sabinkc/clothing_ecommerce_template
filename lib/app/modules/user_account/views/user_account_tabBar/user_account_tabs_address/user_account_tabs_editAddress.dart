// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../../../constants/text_size.dart';
import '../../../../reusable_widgets/LargeButtonReusable.dart';
import '../../../../reusable_widgets/TextFormFieldReusable.dart';

class UserAccountEditAddress extends StatelessWidget {
  var country = ["Nepal"];
  var locationData = [
    {
      "name": "Bagmati",
      "city": [
        {
          "city_name": "Bagmati1",
          "zones": ["Kuleshwor", "Kalimati", "Kalanki"],
        },
        {
          "city_name": "Bagmati2",
          "zones": ["Kuleshwor", "Kalimati", "Kalanki"],
        },
        {
          "city_name": "Bagmati3",
          "zones": ["Kuleshwor", "Kalimati", "Kalanki"],
        },
      ],
    },
    {
      "name": "Gandaki",
      "city": [
        {
          "city_name": "Gandaki1",
          "zones": ["a", "b", "c"],
        },
        {
          "city_name": "Gandaki2",
          "zones": ["d", "e", "f"],
        },
        {
          "city_name": "Gandaki3",
          "zones": ["g", "h", "i"],
        },
      ],
    },
  ];
  var stateProvince = [
    "Bagmati",
    "Gandaki",
  ];
  final List<String> city = ["Bhaktapur", "Kathmandu", "Lalitpur"];
  var zone = ["Kuleshwor", "Kalimati", "Kalanki"];
  final zoneController = TextEditingController();
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
                    "Country",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(
                          RegExp('.*')), // This denies all input
                    ],
                    controller: countryController,
                    decoration: InputDecoration(
                      hintText: "Nepal",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xffAEAEAE),
                        ),
                      ),
                      suffixIcon: PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          countryController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return country
                              .map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(
                                child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ),
                  ),
                  // TextFormFieldReusable(
                  //   hint: "Entern Your Country",
                  //   textEditingController: countryController,
                  // ),
                  const SizedBox(height: 30),
                  Text(
                    "State/Province",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(
                          RegExp('.*')), // This denies all input
                    ],
                    controller: stateController,
                    decoration: InputDecoration(
                      hintText: "Bagmati",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xffAEAEAE),
                        ),
                      ),
                      suffixIcon: PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          stateController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return stateProvince
                              .map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(
                                child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ),
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
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(
                          RegExp('.*')), // This denies all input
                    ],
                    controller: cityController,
                    decoration: InputDecoration(
                      hintText: "Kathmandu",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xffAEAEAE),
                        ),
                      ),
                      suffixIcon: PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          cityController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return city
                              .map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(
                                child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Zone",
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(
                          RegExp('.*')), // This denies all input
                    ],
                    controller: zoneController,
                    decoration: InputDecoration(
                      hintText: "Kuleshwor",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xffAEAEAE),
                        ),
                      ),
                      suffixIcon: PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          zoneController.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return zone
                              .map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(
                                child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ),
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
