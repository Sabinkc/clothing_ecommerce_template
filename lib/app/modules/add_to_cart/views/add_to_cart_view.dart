import 'package:d_and_s/app/modules/add_to_cart/views/added_cart.dart';
import 'package:d_and_s/app/modules/product_detail/controllers/product_detail_controller.dart';
import 'package:d_and_s/app/modules/product_detail/views/product_detail_quantity.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_size.dart';
import '../../product_detail/views/ProductDetailCircularColoredContainer.dart';
import '../../product_detail/views/ProductDetail_Size.dart';
import '../../reusable_widgets/LargeButtonReusable.dart';
import '../controllers/add_to_cart_controller.dart';

class AddToCartView extends GetView<AddToCartController> {
  final Map addToCartData;
  final controller_productDetail = Get.put(ProductDetailController());
  AddToCartView({
    super.key,
    required this.addToCartData,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // controller.quantityIndex.value = 1;

        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              color: Colors.white,
              height: 1000,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 100,
                        child: Row(
                          children: [
                            Obx(
                              () => Container(
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          controller_productDetail
                                                  .selectedImages[
                                              controller_productDetail
                                                  .detailViewProductCustomClickableContainer
                                                  .value],
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Rs. ",
                                      style: TextStyle(
                                        fontSize: TextSize.small,
                                      ),
                                    ),
                                    Text(
                                      "${addToCartData["price"]}",
                                      // priceDetails["price"] ?? "",
                                      style: TextStyle(
                                        fontSize: TextSize.normal,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "${addToCartData["realprice"]}",
                                  // priceDetails["realprice"] ?? "",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    decorationThickness: 5,
                                    decorationColor: Colors.grey,
                                    fontSize: TextSize.small,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                // if (addToCartData["discount"] != null &&
                                //     addToCartData["discount"].isNotEmpty)
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.redAccent),
                                    // color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      "${addToCartData["discount"]}",
                                      // priceDetails["discount"] ?? " -100% ",
                                      style: TextStyle(
                                        fontSize: TextSize.small,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        color: AppColors.lightSilver, // Color of the line
                        thickness: 5, // Thickness of the line
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Color",
                        style: TextStyle(
                          fontSize: TextSize.normal,
                          // fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ProductDetailCircularColoredContainer(
                        colorList: addToCartData["color"],
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        color: AppColors.lightSilver, // Color of the line
                        thickness: 5, // Thickness of the line
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Size",
                        style: TextStyle(
                          fontSize: TextSize.normal,
                          // fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ProductDetailSize(
                        sizeList: addToCartData["size"] ?? [""],
                        //  sizeList: controller_two.sizeList,
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        color: AppColors.lightSilver, // Color of the line
                        thickness: 5, // Thickness of the line
                      ),
                      const SizedBox(height: 10),
                      // POINTER TO BE ADDED
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Quantity",
                            style: TextStyle(
                              fontSize: TextSize.normal,
                              // fontWeight: FontWeight.w800,
                            ),
                          ),
                          ProductDetailQuantity(),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        color: AppColors.lightSilver, // Color of the line
                        thickness: 5, // Thickness of the line
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {

                          if (controller_productDetail.selectedColor.value ==
                              0) {
                            Get.snackbar(
                              'Selection Error',
                              'Please select a color.',
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.redAccent,
                              colorText: Colors.white,
                            );
                            return;
                          }

                          if (controller_productDetail
                              .selectedSize.value.isEmpty) {
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
                              "title": addToCartData["title"],
                              "cartId": cartId,
                              "price": addToCartData["price"],
                              "discount": addToCartData["discount"],
                              "realprice": addToCartData["realprice"],
                              "size":
                                  controller_productDetail.selectedSize.value,
                              "quantity":
                                  controller_productDetail.quantityIndex.value,
                              "image": controller_productDetail.selectedImages[
                                  controller_productDetail
                                      .detailViewProductCustomClickableContainer
                                      .value],
                              "color":
                                  controller_productDetail.selectedColor.value,
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
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: const LargeButtonReusable(
        title: "Add to Cart",
        width: 150,
        color: Colors.redAccent,
      ),
    );
  }
}
