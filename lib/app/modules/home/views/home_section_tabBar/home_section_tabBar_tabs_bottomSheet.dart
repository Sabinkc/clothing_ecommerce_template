// ignore_for_file: file_names

import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';

import 'package:d_and_s/app/modules/product_detail/views/product_detail_price.dart';

import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../add_to_cart/views/added_cart.dart';
import '../../../product_detail/controllers/product_detail_controller.dart';
import '../../../product_detail/views/product_detail_circular_colored_container.dart';
import '../../../product_detail/views/ProductDetail_Size.dart';
import '../../../product_detail/views/product_detail_quantity.dart';

class HomeSectionTabBarTabsBottomSheet extends StatelessWidget {
  final controllerProductDetail = Get.put(ProductDetailController());
  final controller = Get.put(AddToCartController());
  final Map homeSectionTabsData;
  final String homeSectionTabsImg;
  HomeSectionTabBarTabsBottomSheet(
      {super.key,
      required this.homeSectionTabsData,
      required this.homeSectionTabsImg});

  @override
  Widget build(BuildContext context) {
    List size = homeSectionTabsData["size"] ?? [];
    // List reviewdata = homeSectionTabsData["reviews"] ?? [];
    Map colordata = homeSectionTabsData["color"] ?? {};
    return Container(
      height: 1000,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              margin: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: NetworkImage(homeSectionTabsImg),
                  // image: NetworkImage(
                  //   controller.selectedImages[count.value] ??
                  //       'https://example.com/static-image.jpg',
                  // ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              homeSectionTabsData["name"],
              style: TextStyle(
                  fontSize: TextSize.normal, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 15),
            ProductDetailPrice(priceDetails: homeSectionTabsData),
            const SizedBox(height: 15),
            Text(
              "Colors :",
              style: TextStyle(
                fontSize: TextSize.normal,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            ProductDetailCircularColoredContainer(
              colorList: colordata.isNotEmpty
                  ? homeSectionTabsData["color"]
                  : {
                      0x00000000: [
                        'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
                      ],
                    },
            ),
            const SizedBox(height: 15),
            Text(
              "Size",
              style: TextStyle(
                fontSize: TextSize.normal,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 15),
            size.isNotEmpty
                ? ProductDetailSize(
                    sizeList: homeSectionTabsData["size"],
                  )
                : const SizedBox(),
            const SizedBox(height: 15),
            Text(
              "Quantity",
              style: TextStyle(
                fontSize: TextSize.normal,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 15),
            ProductDetailQuantity(),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                // controllerProductDetail.clear();
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
                    "title": homeSectionTabsData["title"],
                    "cartId": cartId,
                    "price": homeSectionTabsData["price"],
                    "discount": homeSectionTabsData["discount"],
                    "realprice": homeSectionTabsData["realprice"],
                    "size": controllerProductDetail.selectedSize.value,
                    "quantity": controllerProductDetail.quantityIndex.value,
                    "image": controllerProductDetail.selectedImages[
                        controllerProductDetail
                            .detailViewProductCustomClickableContainer.value],
                    "color": controllerProductDetail.selectedColor.value,
                  },
                );
                // controller.selectedProducts.add(cartId);
                controller.toggleSelected(cartId);
                controllerProductDetail.clear();
                Get.snackbar(
                  'Added To Cart',
                  'Go to Cart to View Products',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.green,
                  colorText: Colors.white,
                );

                // Get.to(AddedCart(

                //     // addedCartData: addToCartData,

                //     // sizeList: sizeList,
                //     // sizeList: controller_two.sizeList,
                //     ));
              },
              child: const LargeButtonReusable(
                title: "Add to Cart",
                width: double.infinity,
                color: Colors.black,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
