import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/add_to_cart_view.dart';
import 'package:d_and_s/app/modules/product_detail/views/product_detail_price.dart';
import 'package:d_and_s/app/modules/product_detail/views/product_detail_view.dart';
import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../add_to_cart/views/added_cart.dart';
import '../../../product_detail/controllers/product_detail_controller.dart';
import '../../../product_detail/views/ProductDetailCircularColoredContainer.dart';
import '../../../product_detail/views/ProductDetail_Size.dart';
import '../../../product_detail/views/product_detail_quantity.dart';

class HomeSectionTabBarTabsBottomSheet extends StatelessWidget {
  final controller_productDetail = Get.put(ProductDetailController());
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
    List reviewdata = homeSectionTabsData["reviews"] ?? [];
    Map colordata = homeSectionTabsData["color"] ?? {};
    return Container(
      height: 1000,
      width: double.infinity,
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
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
            SizedBox(height: 15),
            Text(
              homeSectionTabsData["name"],
              style: TextStyle(
                  fontSize: TextSize.normal, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15),
            ProductDetailPrice(priceDetails: homeSectionTabsData),
            SizedBox(height: 15),
            Text(
              "Colors :",
              style: TextStyle(
                fontSize: TextSize.normal,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10),
            ProductDetailCircularColoredContainer(
              colorList: colordata.isNotEmpty
                  ? homeSectionTabsData["color"]
                  : {
                      0x00000000: [
                        'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
                      ],
                    },
            ),
            SizedBox(height: 15),
            Text(
              "Size",
              style: TextStyle(
                fontSize: TextSize.normal,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 15),
            size.isNotEmpty
                ? ProductDetailSize(
                    sizeList: homeSectionTabsData["size"],
                  )
                : SizedBox(),
            SizedBox(height: 15),
            Text(
              "Quantity",
              style: TextStyle(
                fontSize: TextSize.normal,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 15),
            ProductDetailQuantity(),
            SizedBox(height: 15),
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
                controller.cartProducts.add(
                  {
                    "title": homeSectionTabsData["title"],
                    "cartId": cartId,
                    "price": homeSectionTabsData["price"],
                    "discount": homeSectionTabsData["discount"],
                    "realprice": homeSectionTabsData["realprice"],
                    "size": controller_productDetail.selectedSize.value,
                    "quantity": controller_productDetail.quantityIndex.value,
                    "image": controller_productDetail.selectedImages[
                        controller_productDetail
                            .detailViewProductCustomClickableContainer.value],
                    "color": controller_productDetail.selectedColor.value,
                  },
                );
                // controller.selectedProducts.add(cartId);
                controller.toggleSelected(cartId);
                Get.to(AddedCart(
                    // addedCartData: addToCartData,

                    // sizeList: sizeList,
                    // sizeList: controller_two.sizeList,
                    ));
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
