// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldCountry extends StatelessWidget {
  var country = ["Nepal"];
  final countryController = TextEditingController();
  TextFieldCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: [
        FilteringTextInputFormatter.deny(
          RegExp('.*'), // This denies all input
        ),
      ],
      controller: countryController,
      decoration: InputDecoration(
        hintText: "Enter Your State/Province",
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
                return DraggableScrollableSheet(
                  expand: false,
                  initialChildSize: 0.3, // Set initial height of bottom sheet
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
                      child: Column(children: [
                        // Obx(
                        //   () => ListView.builder(
                        //       shrinkWrap: true,
                        //       itemCount: searchResult.length,
                        //       itemBuilder: (BuildContext context, index) =>
                        //           GestureDetector(
                        //               onTap: () {
                        //                 controllerUserAcc
                        //                         .stateController.text =
                        //                     searchResult[index]["name"];
                        //                 Navigator.pop(context);
                        //               },
                        //               child:
                        //                   Text(searchResult[index]["name"]))),
                        // ),
                        Container(
                          width: 50,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.only(bottom: 10),
                        ),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            controller: scrollController,
                            itemCount: country.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      country[index],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    onTap: () {
                                      // Set the selected location in the TextField
                                      countryController.text =
                                          country[index].toString();
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
                      ]),
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
