import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/add_to_cart_navBar.dart';
import 'package:d_and_s/app/modules/login/views/login_view.dart';

import 'package:d_and_s/app/modules/product_detail/controllers/product_detail_controller.dart';
import 'package:d_and_s/app/modules/register/views/register_view.dart';
import 'package:d_and_s/app/modules/reusable_widgets/LargeButtonReusable.dart';
import 'package:d_and_s/app/modules/reusable_widgets/recommendation_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../constants/colors.dart';

class AddedCart extends StatelessWidget {
  final controllerProductDetail = Get.put(ProductDetailController());
  final controller = Get.put(AddToCartController());

  AddedCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightSilver,
      appBar: AppBar(
        backgroundColor: AppColors.lightSilver,
        title: const Text("My Cart"),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: () {
              // Add delete action
              controller.cartProducts.removeWhere((item) =>
                  controller.selectedProducts.contains(item["cartId"]));
              controller.selectedProducts
                  .clear(); // Clear the selected products after deletion
              controller.calculateTotalPrice("cart");
            },
          ),
        ],
      ),
      body: Obx(
        () {
          return SingleChildScrollView(
            // padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                controller.cartProducts.isEmpty
                    ? Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Container(
                              height: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/emptyCart.png"), // Use AssetImage instead of Image.asset
                                  fit: BoxFit
                                      .cover, // Optional: Adjust image fit if necessary
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(RegisterView());
                                  },
                                  child: const LargeButtonReusable(
                                    width: 150,
                                    title: "Sign in",
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(const LoginView());
                                  },
                                  child: const LargeButtonReusable(
                                    width: 150,
                                    title: "Log In",
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : Column(
                        children: controller.cartProducts.map(
                          (item) {
                            return Container(
                              // margin: const EdgeInsets.only(bottom: 15),
                              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade300, width: 1)),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(width: 5),

                                  // Checkbox
                                  Checkbox(
                                    value: controller.selectedProducts
                                        .contains(item["cartId"]),
                                    onChanged: (bool? value) {
                                      controller.toggleSelected(item["cartId"]);
                                      controller.quantityIndex.value;
                                    },
                                  ),

                                  const SizedBox(width: 5),
                                  // Product Image
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      // borderRadius: BorderRadius.circular(16),

                                      image: DecorationImage(
                                        image: NetworkImage(item["image"]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),

                                  // Product Details
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Product Title
                                        Text(
                                          item["title"] ?? "No Title",
                                          style: TextStyle(
                                            fontSize: TextSize.small,
                                            fontWeight: FontWeight.w700,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          maxLines: 2,
                                        ),
                                        const SizedBox(height: 5),

                                        // Product Size
                                        Text(
                                          "Size: ${item["size"]}",
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                        const SizedBox(height: 5),

                                        // Price and Discounted Price
                                        Row(
                                          children: [
                                            Text(
                                              "Rs. ${item["price"]}",
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            if (item["realprice"] != null)
                                              Text(
                                                "\$${item["realprice"]}",
                                                style: const TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                          ],
                                        ),
                                        // const SizedBox(height: 5),

                                        // Color and Quantity Selector
                                        Row(
                                          children: [
                                            // Product Color
                                            const SizedBox(width: 5),
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(item["color"]),
                                              ),
                                            ),
                                            const Spacer(),

                                            // Quantity Selector
                                            Row(
                                              children: [
                                                IconButton(
                                                  icon:
                                                      const Icon(Icons.remove),
                                                  onPressed: () {
                                                    controller
                                                        .decrementQuantity(
                                                            item["cartId"]);
                                                  },
                                                ),
                                                Text(
                                                  item["quantity"].toString(),
                                                  style: const TextStyle(
                                                      fontSize: 16),
                                                ),
                                                IconButton(
                                                  icon: const Icon(Icons.add),
                                                  onPressed: () {
                                                    controller
                                                        .incrementQuantity(
                                                            item["cartId"]);
                                                  },
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ).toList(),
                      ),
                const SizedBox(height: 20),
                Text(
                  "Recommended Items",
                  style: TextStyle(
                    fontSize: TextSize.normal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors
                          .lightSilver, // Background color for a clean look
                      borderRadius: BorderRadius.circular(
                          10), // Rounded corners for smoothness
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // Soft shadow
                          blurRadius: 10,
                          offset: const Offset(0, 5), // Shadow direction
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(
                        10), // Padding inside the container
                    height: Adaptive.h(27),
                    child: RecommendationView(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Obx(
        () {
          int totalPrice = controller.calculateTotalPrice("cart");
          // Check if totalPrice is not empty, null, or zero
          return totalPrice != 0
              ? AddToCartNavBar(
                  price: totalPrice.toString(),
                )
              : const SizedBox
                  .shrink(); // Don't show anything when total price is zero
        },
      ),
    );
  }
}
