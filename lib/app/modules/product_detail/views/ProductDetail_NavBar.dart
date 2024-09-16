import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/add_to_cart_checkout/add_to_cart_checkout.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/add_to_cart_view.dart';
import 'package:d_and_s/app/modules/favourites/controllers/favourites_controller.dart';
import 'package:d_and_s/app/modules/favourites/views/favourites_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../reusable_widgets/LargeButtonReusable.dart';
import '../controllers/product_detail_controller.dart';

class ProductDetailNavBar extends StatelessWidget {
  final controller = Get.put(AddToCartController());
  final controller_productDetail = Get.put(ProductDetailController());
  final controller_favorites = Get.put(FavouritesController());
  final Map navBarData;
  ProductDetailNavBar({
    super.key,
    required this.navBarData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      decoration: BoxDecoration(
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
              final String cartId = UniqueKey().toString();
              controller_favorites.favouritesList.add(navBarData);
              Get.snackbar(
                'Added To Favorites',
                'Go To Favorites To View Products',
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.redAccent,
                colorText: Colors.white,
              );
              Get.to(FavouritesView());
            },
            child: Icon(
              Icons.favorite,
              color: Colors.green,
            ),
          ),
          // Price Section
          GestureDetector(
            onTap: () {
              if (controller_productDetail.selectedColor.value == 0) {
                Get.snackbar(
                  'Selection Error',
                  'Please select a color.',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.redAccent,
                  colorText: Colors.white,
                );
                return;
              }

              if (controller_productDetail.selectedSize.value.isEmpty) {
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
                  "size": controller_productDetail.selectedSize.value,
                  "quantity": controller_productDetail.quantityIndex.value,
                  "image": controller_productDetail.selectedImages[
                      controller_productDetail
                          .detailViewProductCustomClickableContainer.value],
                  "color": controller_productDetail.selectedColor.value,
                },
              );
              controller.calculateTotalPrice("buy");
              Get.to(AddToCartCheckout());
            },
            child: LargeButtonReusable(
              title: "Buy Now",
              width: 150,
              color: Colors.orange,
            ),
          ),
          // SizedBox(width: 20),

          AddToCartView(
            addToCartData: navBarData,
          ),
        ],
      ),
    );
  }
}
