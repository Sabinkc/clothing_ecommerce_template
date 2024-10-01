import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/added_cart.dart';
import 'package:d_and_s/app/modules/product_detail/views/product_detail_price.dart';
import 'package:d_and_s/app/modules/product_detail/views/product_detail_quantity.dart';
import 'package:d_and_s/app/modules/reusable_widgets/TextFormFieldReusable.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_size.dart';

import '../../reusable_widgets/CustomClickableContainer.dart';
import 'ProductDetailViewReusableRow.dart';
import '../controllers/product_detail_controller.dart';
import 'product_detail_circular_colored_container.dart';
import 'ProductDetail_Attributes.dart';
import 'ProductDetail_NavBar.dart';
import 'ProductDetail_Size.dart';
import 'product_detail_review/ProductDetails_Review.dart';

class ProductDetailView extends StatelessWidget {
  final controller = Get.put(ProductDetailController());
  final addToCartController = Get.put(AddToCartController());
// GetView<ProductDetailController> {
  final search = TextEditingController();
  // final controller = Get.put(HomeController());

  final Map data;

  ProductDetailView({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    var titleShow = controller.detailViewProductTitleShow;
    var descriptionShow = controller.detailViewProductDescShow;
    Map attributes = data["attributes"] ?? {};
    List size = data["size"] ?? [];
    List reviewdata = data["reviews"] ?? [];
    Map colordata = data["color"] ?? {};
    {
      return KeyboardDismisser(
        gestures: const [
          GestureType.onTap,
          GestureType.onPanUpdateDownDirection,
        ],
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: SizedBox(
              height: 45,
              child: TextFormFieldReusable(
                hint: ".....",
                icon: const Icon(Icons.search),
                textEditingController: search,
              ),
            ),

            // leading: GestureDetector(
            //     onTap: () {
            //       controller.quantityIndex.value = 1;
            //       Navigator.pop(context);
            //     },
            //     child: Icon(Icons.arrow_back_ios)),
            actions: [
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
              const SizedBox(
                width: 20,
              )
            ],
            centerTitle: false,
          ),
          body: Container(
            height: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  // CarouselSliderReusable(imgList: imgList),
                  CustomClickableContainer(
                    coloredImgUrl: colordata.isNotEmpty
                        ? data["color"]
                        : {
                            0x00000000: [
                              'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
                            ],
                          },
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        ProductDetailPrice(priceDetails: data),
                        const SizedBox(height: 10),
                        Text(
                          "Category: ${data["category"]}",
                          style: TextStyle(
                            fontSize: TextSize.small,
                            color: AppColors.silver,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              titleShow.value = !titleShow.value;
                            },
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    data["name"] ?? "No Nmae",
                                    style: TextStyle(
                                      fontSize: TextSize.normal,
                                      fontWeight: titleShow.value == true
                                          ? FontWeight.w100
                                          : FontWeight.w800,
                                      overflow: titleShow.value == true
                                          ? TextOverflow.clip
                                          : TextOverflow.ellipsis,
                                      // color: controller.productTitleShow.value == true
                                      //     ? Colors.red
                                      //     : Colors.black,
                                    ),
                                  ),
                                ),
                                Icon(
                                  titleShow.value
                                      ? Icons.arrow_upward
                                      : Icons.arrow_downward,
                                  color: titleShow.value == true
                                      ? Colors.red
                                      : Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_border,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "4.1 Reviews",
                              style: TextStyle(
                                fontSize: TextSize.small,
                                color: AppColors.silver,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
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
                              ? data["color"]
                              : {
                                  0x00000000: [
                                    'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
                                  ],
                                },
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Size",
                          style: TextStyle(
                            fontSize: TextSize.normal,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 10),
                        size.isNotEmpty
                            ? ProductDetailSize(
                                sizeList: data["size"],
                              )
                            : const SizedBox(),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quantity",
                              style: TextStyle(
                                fontSize: TextSize.normal,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            ProductDetailQuantity(),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Descriptions",
                          style: TextStyle(
                            fontSize: TextSize.normal,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Obx(
                          () => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data["description"] ?? "No Description",
                                style: TextStyle(
                                  fontSize: TextSize.small,
                                  overflow: descriptionShow.value == true
                                      ? TextOverflow.clip
                                      : TextOverflow.ellipsis,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  descriptionShow.value =
                                      !descriptionShow.value;
                                },
                                child: Text(
                                  descriptionShow.value == false
                                      ? "show more"
                                      : "show less",
                                  style: TextStyle(
                                      color: descriptionShow.value == false
                                          ? Colors.blue
                                          : Colors.red,
                                      fontSize: TextSize.small),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        attributes.isNotEmpty
                            ? ProductDetailAttributes(
                                attributes: data["attributes"])
                            : const SizedBox(),
                        const Divider(
                          color: AppColors.lightSilver, // Color of the line
                          thickness: 5, // Thickness of the line
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Get.to(
                              ProductDetailReview(reviews: reviewdata
                                  // ??
                                  //     [
                                  //       {"review": "Review is empty"},
                                  //     ],
                                  ),
                            );
                          },
                          child: const ProductDetailViewReusableRow(
                            title: "Reviews",
                            icons: Icon(Icons.keyboard_outlined),
                          ),
                        ),
                        const Divider(
                          color: AppColors.lightSilver, // Color of the line
                          thickness: 5, // Thickness of the line
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: ProductDetailNavBar(
            navBarData: data,
            // price: data["price"] ?? "",
          ),
        ),
      );
    }
  }
}
