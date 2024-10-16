// ignore_for_file: file_names

import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/add_to_cart_checkout/add_to_cart_checkout.dart';

import 'package:d_and_s/app/modules/favourites/controllers/favourites_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../add_to_cart/views/added_cart.dart';
import '../../reusable_widgets/LargeButtonReusable.dart';
import '../controllers/product_detail_controller.dart';

class ProductDetailNavBar extends StatelessWidget {
  final controller = Get.put(AddToCartController());
  final controllerProductDetail = Get.put(ProductDetailController());
  final controllerFavorites = Get.put(FavouritesController());
  final Map navBarData;
  ProductDetailNavBar({
    super.key,
    required this.navBarData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              controllerFavorites.searchProductId(
                  navBarData["product_id"], navBarData);
            },
            child: Obx(
              () => Icon(
                controllerFavorites.isFavorite(navBarData["product_id"])
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.green,
              ),
            ),
          ),

          // Price Section
          GestureDetector(
            onTap: () {
              if (controllerProductDetail.selectedColor.value == 0) {
                Get.snackbar(
                  'Selection Error',
                  'Please select a color.',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.redAccent,
                  colorText: Colors.white,
                );
                return;
              }

              if (controllerProductDetail.selectedSize.value.isEmpty) {
                Get.snackbar(
                  'Selection Error',
                  'Please select a size.',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.redAccent,
                  colorText: Colors.white,
                );
                return;
              }

              final String cartId = UniqueKey().toString();
              controller.checkoutList.clear();

              controller.checkoutList.add(
                {
                  "title": navBarData["title"],
                  "cartId": cartId,
                  "price": navBarData["price"],
                  "discount": navBarData["discount"],
                  "realprice": navBarData["realprice"],
                  "size": controllerProductDetail.selectedSize.value,
                  "quantity": controllerProductDetail.quantityIndex.value,
                  "image": controllerProductDetail.selectedImages[
                      controllerProductDetail
                          .detailViewProductCustomClickableContainer.value],
                  "color": controllerProductDetail.selectedColor.value,
                },
              );
              controller.calculateTotalPrice("buy");
              controllerProductDetail.clear();
              Get.to(
                AddToCartCheckout(),
                transition: Transition
                    .leftToRightWithFade, // Professional fade-in effect
                duration: const Duration(
                    milliseconds: 500), // Smooth duration for the transition
                curve:
                    Curves.easeInOut, // Adds smoothness with easing in and out
              );
            },
            child: const LargeButtonReusable(
              title: "Buy Now",
              width: 150,
              color: Colors.black,
            ),
          ),

          GestureDetector(
            onTap: () {
              if (controllerProductDetail.selectedColor.value == 0) {
                Get.snackbar(
                  'Selection Error',
                  'Please select a color.',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.redAccent,
                  colorText: Colors.white,
                );
                return;
              }

              if (controllerProductDetail.selectedSize.value.isEmpty) {
                Get.snackbar(
                  'Selection Error',
                  'Please select a size.',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.redAccent,
                  colorText: Colors.white,
                );
                return;
              }

              final String cartId = UniqueKey().toString();
              controller.cartProducts.add(
                {
                  "title": navBarData["title"],
                  "cartId": cartId,
                  "price": navBarData["price"],
                  "discount": navBarData["discount"],
                  "realprice": navBarData["realprice"],
                  "size": controllerProductDetail.selectedSize.value,
                  "quantity": controllerProductDetail.quantityIndex.value,
                  "image": controllerProductDetail.selectedImages[
                      controllerProductDetail
                          .detailViewProductCustomClickableContainer.value],
                  "color": controllerProductDetail.selectedColor.value,
                },
              );
              controllerProductDetail.clear();
              // controller.selectedProducts.add(cartId);
              controller.toggleSelected(cartId);
              Get.snackbar(
                'Added To Cart',
                'Go to Cart to View Products',
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.green,
                colorText: Colors.white,
              );
              Navigator.pop(context);
              // Get.to(
              //   AddedCart(),
              //   transition: Transition
              //       .leftToRightWithFade, // Professional fade-in effect
              //   duration: const Duration(
              //       milliseconds: 500), // Smooth duration for the transition
              //   curve:
              //       Curves.easeInOut, // Adds smoothness with easing in and out
              // );
            },
            child: const LargeButtonReusable(
              title: "Add to Cart",
              width: 150,
              color: Colors.black,
            ),
          ),
          // AddToCartView(
          //   addToCartData: navBarData,
          // ),
        ],
      ),
    );
  }
}
