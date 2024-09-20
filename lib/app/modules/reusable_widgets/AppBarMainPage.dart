import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/added_cart.dart';
import 'package:d_and_s/app/modules/favourites/controllers/favourites_controller.dart';
import 'package:d_and_s/app/modules/favourites/views/favourites_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarMainPage extends StatelessWidget {
  final favoriteController = Get.put(FavouritesController());
  final addToCartController = Get.put(AddToCartController());
  final String title;
  final bool isLeading;
  AppBarMainPage({super.key, required this.title, this.isLeading = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(title),
      ),
      centerTitle: false,
      // leading: Icon(Icons.camera),
      automaticallyImplyLeading: isLeading,
      actions: [
        GestureDetector(
          onTap: () {
            Get.to(FavouritesView());
          },
          child: Stack(
            children: [
              Container(
                height: 50,
                child: Icon(
                  Icons.favorite_outline,
                  size: 30,
                  // color: Colors.grey,
                ),
              ),
              Obx(
                () => favoriteController.favoritesList.isEmpty
                    ? SizedBox()
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
                              style: TextStyle(
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
        SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            Get.to(() => AddedCart());
          },
          child: Stack(
            children: [
              Container(
                height: 50,
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  // color: Colors.grey,
                ),
              ),
              Obx(
                () => addToCartController.cartProducts.isEmpty
                    ? SizedBox()
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
                              style: TextStyle(
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
        SizedBox(width: 20),
      ],
    );
  }
}
