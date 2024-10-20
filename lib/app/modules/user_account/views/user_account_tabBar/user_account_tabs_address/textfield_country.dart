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
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              width: MediaQuery.of(context).size.width -
                                  100, // Adjust width if needed
                              decoration: BoxDecoration(
                                color: Colors
                                    .grey[200], // Background color of the item
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3), // Shadow position
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    value,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Icon(Icons.check,
                                      color: Colors
                                          .green), // Optional icon to indicate selection
                                ],
                              ),
                            ),
                          );
                        }).toList();
                      },
                    ),
                  ),
                );
  }
}