import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/login/views/login_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../add_to_cart/controllers/add_to_cart_controller.dart';
import '../../favourites/controllers/favourites_controller.dart';

class UserAccountContainer extends StatelessWidget {
  final favoriteController = Get.put(FavouritesController());
  final addToCartController = Get.put(AddToCartController());
  UserAccountContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // User Profile Image
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade300, width: 2),
            image: DecorationImage(
              image: NetworkImage(
                "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 16),
        // User Information
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Aman",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  // Wish List
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wish List",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      SizedBox(height: 4),
                      Obx(
                        () => Text(
                          favoriteController.favoritesList.length.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 32),
                  // Vouchers
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cart",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      SizedBox(height: 4),
                      Obx(
                        () => Text(
                          addToCartController.cartProducts.length.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        // Settings Icon
        Column(
          children: [
            IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.grey.shade600,
              ),
              onPressed: () {
                Get.to(LoginView());
                // Handle settings press
              },
            ),
            Text(
              "Logout",
              style: TextStyle(fontSize: TextSize.mini, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
