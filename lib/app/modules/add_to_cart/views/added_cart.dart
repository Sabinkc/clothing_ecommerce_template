import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/add_to_cart_navBar.dart';

import 'package:d_and_s/app/modules/home/views/home_tabBar/home_tabBar_tabs.dart';
import 'package:d_and_s/app/modules/product_detail/controllers/product_detail_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';

class AddedCart extends StatelessWidget {
  final controller_productDetail = Get.put(ProductDetailController());
  final controller = Get.put(AddToCartController());

  AddedCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("My Cart"),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              // Add delete action
              controller.cartProducts.removeWhere((item) =>
                  controller.selectedProducts.contains(item["cartId"]));
              controller.selectedProducts
                  .clear(); // Clear the selected products after deletion
              controller.calculateTotalPrice();
            },
          ),
        ],
      ),
      body: Obx(() {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Column(
                children: controller.cartProducts.map(
                  (item) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey.shade300),
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
                              borderRadius: BorderRadius.circular(16),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                    color: Colors.blue,
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
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    if (item["realprice"] != null)
                                      Text(
                                        "\$${item["realprice"]}",
                                        style: const TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
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
                                          icon: const Icon(Icons.remove),
                                          onPressed: () {
                                            controller.decrementQuantity(
                                                item["cartId"]);
                                          },
                                        ),
                                        Text(
                                          item["quantity"].toString(),
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.add),
                                          onPressed: () {
                                            controller.incrementQuantity(
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
              Text(
                "Recommended Items",
                style: TextStyle(
                    fontSize: TextSize.normal, color: AppColors.lightBlue),
              ),
              const SizedBox(height: 10),
              HomeTabBarTabs(),
            ],
          ),
        );
      }),
      bottomNavigationBar: Obx(
        () => AddToCartNavBar(
          price: "${controller.totalPrice.value}",
        ),
      ),
    );
  }
}
