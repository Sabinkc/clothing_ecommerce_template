
import 'package:d_and_s/app/constants/text_size.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_account_tabs_addAddress.dart';
import 'user_account_tabs_editAddress.dart';

class UserAccountTabsAddress extends StatelessWidget {
  final String title = "Brenna Cotton";
  final String subtitle =
      "263 West Rocky Nobel Boulevard Veniam ea possimus quis molesti, IA, 25880, US +17672952627";
  const UserAccountTabsAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Address Book",
            style: TextStyle(
                fontSize: TextSize.normal, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 20),
          Text(
            "Feel free to edit any of your address details below so your account is up to date.",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: TextSize.normal,
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Get.to(UserAccountAddAddress());
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xff6B7280).withOpacity(0.5),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New Address",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: TextSize.normal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 100),
                  const Icon(Icons.add)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: TextSize.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      subtitle,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: TextSize.normal,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(UserAccountEditAddress());
                          },
                          child: Text(
                            "Edit",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: TextSize.normal,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          "Remove",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: TextSize.normal,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
