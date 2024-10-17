// ignore_for_file: file_names, must_be_immutable

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
        "city_name": "Kathmandu",
        "zones": ["Kuleshwor", "New Baneshwor", "Boudha"],
      },
      {
        "city_name": "Lalitpur",
        "zones": ["Patan", "Jawalakhel", "Lagankhel"],
      },
      {
        "city_name": "Bhaktapur",
        "zones": ["Suryabinayak", "Changu Narayan", "Dattatreya"],
      },
    ],
  },
  {
    "name": "Gandaki",
    "city": [
      {
        "city_name": "Pokhara",
        "zones": ["Lakeside", "Mahendrapool", "Nayabazar"],
      },
      {
        "city_name": "Gorkha",
        "zones": ["Gorkha Bazaar", "Barpak", "Manakamana"],
      },
      {
        "city_name": "Lamjung",
        "zones": ["Besisahar", "Sundarbazar", "Bhujung"],
      },
    ],
  },
  {
    "name": "Lumbini",
    "city": [
      {
        "city_name": "Butwal",
        "zones": ["Devinagar", "Kalikanagar", "Traffic Chowk"],
      },
      {
        "city_name": "Kapilvastu",
        "zones": ["Taulihawa", "Krishnanagar", "Buddhanagar"],
      },
      {
        "city_name": "Palpa",
        "zones": ["Tansen", "Srinagar", "Madibas"],
      },
    ],
  },
  {
    "name": "Karnali",
    "city": [
      {
        "city_name": "Surkhet",
        "zones": ["Birendranagar", "Itram", "Latikoili"],
      },
      {
        "city_name": "Jumla",
        "zones": ["Khalanga", "Tatopani", "Chandannath"],
      },
      {
        "city_name": "Dailekh",
        "zones": ["Narayan", "Dullu", "Bhagwatimai"],
      },
    ],
  },
  {
    "name": "Koshi",
    "city": [
      {
        "city_name": "Biratnagar",
        "zones": ["Rani", "Buddhanagar", "Mills Area"],
      },
      {
        "city_name": "Dharan",
        "zones": ["Bhanuchowk", "Saptarangi Park", "Pindeshwori"],
      },
      {
        "city_name": "Itahari",
        "zones": ["Itahari Chowk", "Hanuman Mandir", "Tarahara"],
      },
    ],
  },
  {
    "name": "Madhesh",
    "city": [
      {
        "city_name": "Janakpur",
        "zones": ["Janaki Mandir", "Ramanand Chowk", "Bhanu Chowk"],
      },
      {
        "city_name": "Birgunj",
        "zones": ["Ghantaghar", "Adarsh Nagar", "Powerhouse"],
      },
      {
        "city_name": "Rajbiraj",
        "zones": ["Rajdevi Mandir", "Sakhda", "Kataiya"],
      },
    ],
  },
  {
    "name": "Sudurpashchim",
    "city": [
      {
        "city_name": "Dhangadhi",
        "zones": ["Hasuliya", "Campus Road", "Attariya"],
      },
      {
        "city_name": "Mahendranagar",
        "zones": ["Bhasi", "Shivnagar", "Mahakali Highway"],
      },
      {
        "city_name": "Dadeldhura",
        "zones": ["Amargadhi", "Ugratara", "Gaira"],
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
                          return PopupMenuItem(
                              value: value,
                              child: Text(value));
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
                      RegExp('.*'), // This denies all input
                    ),
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
                        return locationData
                            .map<PopupMenuItem<String>>((location) {
                          final String locationName =
                              location["name"] as String;
                          return PopupMenuItem<String>(
                            value: locationName,
                            child: Text(locationName),
                          );
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
                      RegExp('.*'), // This denies all input
                    ),
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
                        // Find the selected state based on stateController text
                        var selectedState = locationData.firstWhere(
                          (element) => element["name"] == stateController.text,
                        );

                        // Check if selectedState is null or doesn't contain a valid 'city' field
                        if (selectedState["city"] == null) {
                          return []; // Return empty list if no state or cities are found
                        }

                        // Get the list of cities for the selected state and ensure it's a List
                        List<dynamic> cities =
                            selectedState["city"] as List<dynamic>;

                        // Map over the cities to create PopupMenuItems
                        return cities.map<PopupMenuItem<String>>((city) {
                          final String cityName = city["city_name"] as String;
                          return PopupMenuItem<String>(
                            value: cityName,
                            child: Text(cityName),
                          );
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
                      RegExp('.*'), // This denies all input
                    ),
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
                        // Ensure a state is selected
                        var selectedState = locationData.firstWhere(
                          (element) => element["name"] == stateController.text,
                          orElse: () =>
                              {}, // Return empty map if no state is found
                        );

                        // If no state is selected or the state has no cities, return empty list
                        if (selectedState.isEmpty ||
                            selectedState["city"] == null) {
                          return [];
                        }

                        // Find the selected city from the selected state
                        var selectedCity =
                            (selectedState["city"] as List).firstWhere(
                          (city) => city["city_name"] == cityController.text,
                          // orElse: () =>
                          //     {}, // Return empty map if no city is found
                        );

                        // If no city is selected or the city has no zones, return empty list
                        if (selectedCity.isEmpty ||
                            selectedCity["zones"] == null) {
                          return [];
                        }

                        // Extract the list of zones for the selected city
                        List<dynamic> zones =
                            selectedCity["zones"] as List<dynamic>;

                        // Map the zones to PopupMenuItems
                        return zones.map<PopupMenuItem<String>>((zone) {
                          final String zoneName = zone as String;
                          return PopupMenuItem<String>(
                            value: zoneName,
                            child: Text(zoneName),
                          );
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