
import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/added_cart.dart';
import 'package:d_and_s/app/modules/favourites/controllers/favourites_controller.dart';
import 'package:d_and_s/app/modules/favourites/views/favourites_view.dart';
import 'package:d_and_s/app/modules/reusable_widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../search_view/controllers/search_view_controller.dart';

class AppBarMainPage extends StatelessWidget {
  final favoriteController = Get.put(FavouritesController());
  final addToCartController = Get.put(AddToCartController());
  final controllerSearch = Get.put(SearchViewController());
  final String title;
  final bool isLeading;
  AppBarMainPage({super.key, required this.title, this.isLeading = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: Colors.white,

            title: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            centerTitle: false,
            // leading: Icon(Icons.camera),
            automaticallyImplyLeading: isLeading,
            actions: [
              GestureDetector(
                onTap: () {
                  Get.to(
                    FavouritesView(),
                    transition: Transition
                        .leftToRightWithFade, // Professional fade-in effect
                    duration: const Duration(
                        milliseconds:
                            500), // Smooth duration for the transition
                    curve: Curves
                        .easeInOut, // Adds smoothness with easing in and out
                  );
                },
                child: Stack(
                  children: [
                    const SizedBox(
                      height: 50,
                      child: Icon(
                        Icons.favorite_outline,
                        size: 30,
                        // color: Colors.grey,
                      ),
                    ),
                    Obx(
                      () => favoriteController.favoritesList.isEmpty
                          ? const SizedBox()
                          : Positioned(
                              top: 2,
                              right: 0,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red.withOpacity(0.8)),
                                child: Center(
                                  child: Text(
                                    favoriteController.favoritesList.length
                                        .toString(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Get.to(
                    () => AddedCart(),
                    transition: Transition
                        .leftToRightWithFade, // Professional fade-in effect
                    duration: const Duration(
                        milliseconds:
                            500), // Smooth duration for the transition
                    curve: Curves
                        .easeInOut, // Adds smoothness with easing in and out
                  );
                },
                child: Stack(
                  children: [
                    const SizedBox(
                      height: 50,
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 30,
                        // color: Colors.grey,
                      ),
                    ),
                    Obx(
                      () => addToCartController.cartProducts.isEmpty
                          ? const SizedBox()
                          : Positioned(
                              // bottom: 25,
                              top: 2,
                              right: 0,
                              // left: 10,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red.withOpacity(0.8)),
                                child: Center(
                                  child: Text(
                                    addToCartController.cartProducts.length
                                        .toString(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          SearchBox(
            showFilter: true,
          ),
        ],
      ),
    );
  }
}
