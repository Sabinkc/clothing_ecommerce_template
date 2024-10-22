import 'package:d_and_s/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouritesController extends GetxController {
  // static FavouritesController get instance => Get.find();

  var favoritesList = [].obs;
  // var favouritesProductId = "".obs;
  final count = 0.obs;
  bool isFavorite(
    String favoriteId,
  ) {
    bool itemExist =
        favoritesList.any((element) => element["product_id"] == favoriteId);
    return itemExist;
  }

  void searchProductId(String favoriteId, dynamic product) {
    // itemExist? favoritesList.remove(product):favoritesList.add(product);
    isFavorite(favoriteId)
        ? {
            favoritesList.remove(product),
            Get.snackbar(
              'Removed',
              'Product Is Removed',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: AppColors.red,
              colorText: Colors.white,
            ),
          }
        : {
            // If product is not already in the list, add it
            favoritesList.add(product),
            Get.snackbar(
              'Added To Favorites',
              'Go to Favorites to view products',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: AppColors.green,
              colorText: Colors.white,
            ),
          };
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  void increment() => count.value++;
}
