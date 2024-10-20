// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../../data/location.dart';
import '../../../controllers/user_account_controller.dart';

class TextFieldZone extends StatelessWidget {
  final controllerUserAcc = Get.put(UserAccountController());
  var searchResult = [].obs; // For filtering zones
  final searchController = TextEditingController();

  TextFieldZone({super.key});

  @override
  Widget build(BuildContext context) {
    void searchQuery(String query, List<dynamic> zones) {
      if (query.isEmpty) {
        searchResult.value = [];
      } else {
        // Filter the zones list based on search query
        List filteredZones = zones
            .where((zone) =>
                zone.toString().toLowerCase().contains(query.toLowerCase()))
            .toList();
        searchResult.value = filteredZones;
      }
    }

    return TextField(
      inputFormatters: [
        FilteringTextInputFormatter.deny(
          RegExp('.*'), // This denies all input
        ),
      ],
      controller: controllerUserAcc.zoneController,
      decoration: InputDecoration(
        hintText: "Enter Your Zone",
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
                // Ensure a state is selected
                var selectedState = locationData.firstWhere(
                  (element) =>
                      element["name"] == controllerUserAcc.stateController.text,
                  orElse: () =>
                      {"city": []}, // Fallback in case no state is found
                );

                // Check if the selected state has cities
                if (selectedState["city"] == null) {
                  return const Center(
                      child: Text("No cities found for this state."));
                }

                // Find the selected city from the selected state
                var selectedCity = (selectedState["city"] as List).firstWhere(
                  (city) =>
                      city["city_name"] ==
                      controllerUserAcc.cityController.text,
                  orElse: () =>
                      {"zones": []}, // Fallback in case no city is found
                );

                // Check if the selected city has zones
                if (selectedCity["zones"] == null) {
                  return const Center(
                      child: Text("No zones found for this city."));
                }

                // Extract the list of zones for the selected city
                List<dynamic> zones =
                    selectedCity["zones"] as List<dynamic>? ?? [];

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
                              hintText: "Search zones...",
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.grey[600]),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              searchQuery(value,
                                  zones); // Call searchQuery on every text change
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
                                      itemCount: zones.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        final String zoneName =
                                            zones[index] as String;
                                        return Column(
                                          children: [
                                            ListTile(
                                              title: Text(
                                                zoneName,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                              onTap: () {
                                                // Set the selected zone in the TextField
                                                controllerUserAcc.zoneController
                                                    .text = zoneName;
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
                                        final zoneName = searchResult[index];
                                        return Column(
                                          children: [
                                            ListTile(
                                              title: Text(
                                                zoneName,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                              onTap: () {
                                                // Set the selected zone in the TextField
                                                controllerUserAcc.zoneController
                                                    .text = zoneName;
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
