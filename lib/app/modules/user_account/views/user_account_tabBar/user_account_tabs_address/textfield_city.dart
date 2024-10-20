// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../../data/location.dart';
import '../../../controllers/user_account_controller.dart';

class TextFieldCity extends StatelessWidget {
  final searchController = TextEditingController();
  final controllerUserAcc = Get.put(UserAccountController());
  var searchResult = [].obs;

  TextFieldCity({super.key});

  @override
  Widget build(BuildContext context) {
    void searchQuery(String query, List<dynamic> cities) {
      if (query.isEmpty) {
        searchResult.value = [];
      } else {
        // Filter the cities list based on search query
        List filteredCities = cities
            .where((city) =>
                city['city_name'].toLowerCase().contains(query.toLowerCase()))
            .toList();
        searchResult.value = filteredCities;
      }
    }

    return TextField(
      inputFormatters: [
        FilteringTextInputFormatter.deny(
          RegExp('.*'), // This denies all input
        ),
      ],
      controller: controllerUserAcc.cityController,
      decoration: InputDecoration(
        hintText: "Enter Your City",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xffAEAEAE),
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled:
                  true, // Allow the bottom sheet to cover the whole screen
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20), // Rounded top corners
                ),
              ),
              builder: (BuildContext context) {
                // Find the selected state based on stateController text
                var selectedState = locationData.firstWhere(
                  (element) =>
                      element["name"] == controllerUserAcc.stateController.text,
                  orElse: () =>
                      {"city": []}, // Fallback in case no state is found
                );

                // Get the list of cities for the selected state
                List<dynamic> cities =
                    selectedState["city"] as List<dynamic>? ?? [];

                return DraggableScrollableSheet(
                  expand: false,
                  initialChildSize: 0.5, // Set initial height of bottom sheet
                  maxChildSize: 0.8, // Max height when fully expanded
                  minChildSize: 0.3, // Minimum height of bottom sheet
                  builder: (BuildContext context,
                      ScrollController scrollController) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: const Offset(0, -3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          TextField(
                            controller: searchController,
                            decoration: InputDecoration(
                              hintText: "Search cities...",
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.grey[600]),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              searchQuery(value,
                                  cities); // Call searchQuery on every text change
                            },
                          ),
                          Container(
                            width: 50,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: const EdgeInsets.only(bottom: 10),
                          ),
                          Obx(
                            () => searchResult.isEmpty
                                ? Expanded(
                                    child: ListView.builder(
                                      controller: scrollController,
                                      itemCount: cities.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        final String cityName = cities[index]
                                            ["city_name"] as String;
                                        return Column(
                                          children: [
                                            ListTile(
                                              title: Text(
                                                cityName,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                              onTap: () {
                                                // Set the selected city in the TextField
                                                controllerUserAcc.cityController
                                                    .text = cityName;
                                                Navigator.pop(
                                                    context); // Close the bottom sheet
                                              },
                                            ),
                                            Divider(
                                              height: 1,
                                              color: Colors.grey[300],
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  )
                                : Expanded(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      controller: scrollController,
                                      itemCount: searchResult.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        final cityName = searchResult[index]
                                            ["city_name"] as String;
                                        return Column(
                                          children: [
                                            ListTile(
                                              title: Text(
                                                cityName,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                              onTap: () {
                                                // Set the selected city in the TextField
                                                controllerUserAcc.cityController
                                                    .text = cityName;
                                                Navigator.pop(
                                                    context); // Close the bottom sheet
                                              },
                                            ),
                                            Divider(
                                              height: 1,
                                              color: Colors.grey[300],
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          },
          child: const Icon(Icons.arrow_drop_down),
        ),
      ),
    );
  }
}
