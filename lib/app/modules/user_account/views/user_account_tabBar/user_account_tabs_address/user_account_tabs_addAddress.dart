// ignore_for_file: file_names

import 'package:d_and_s/app/modules/reusable_widgets/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../../../constants/text_size.dart';
import '../../../../reusable_widgets/LargeButtonReusable.dart';
import '../../../../reusable_widgets/TextFormFieldReusable.dart';

class UserAccountAddAddress extends StatelessWidget {
  var country = ["Nepal"];
  var stateProvince = ["Bagmati", "Gandaki"];
  final List<String> city = ["Bhaktapur", "Kathmandu", "Lalitpur"];
  var zone = ["Kuleshwor", "Kalimati", "Kalanki"];
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
  Widget build(BuildContext context) =>
    // var a = locationData[0];
    KeyboardDismisser(
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
                TextField(
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(
                        RegExp('.*')), // This denies all input
                  ],
                  controller: countryController,
                  decoration: InputDecoration(
                    hintText: "Enter Your Country",
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
                    hintText: "Enter Your State/Province",
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
                    hintText: "Enter Your City",
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
                        return city.map<PopupMenuItem<String>>((String value) {
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
                    hintText: "Enter Your Zone",
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
                        return zone.map<PopupMenuItem<String>>((String value) {
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
// class PopUPMenuTextField extends StatelessWidget {
//   final  controller ;
//   final List items;
//   const PopUPMenuTextField({super.key, this.controller, required this.items});

//   @override

//   Widget build(BuildContext context) {
//     return TextField(
//                     controller: controller,
//                     decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(6),
//                         borderSide: const BorderSide(
//                           width: 1,
//                           color: Color(0xffAEAEAE),
//                         ),
//                       ),
//                       suffixIcon: PopupMenuButton<String>(
//                         icon: const Icon(Icons.arrow_drop_down),
//                         onSelected: (String value) {
//                           controller.text = value;
//                         },
//                         itemBuilder: (BuildContext context) {
//                           return items
//                               .map<PopupMenuItem<String>>((String value) {
//                             return new PopupMenuItem(
//                                 child: new Text(value), value: value);
//                           }).toList();
//                         },
//                       ),
//                     ),
//                   );
//   }
// }