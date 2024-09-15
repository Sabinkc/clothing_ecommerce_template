import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/add_to_cart_checkout/add_to_cart_receipt.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/text_size.dart';
import '../../../reusable_widgets/LargeButtonReusable.dart';

class AddToCartCheckout extends StatelessWidget {
  final controller = Get.put(AddToCartController());
  AddToCartCheckout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        centerTitle: false,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              children: [
                Column(
                  children: controller.checkoutList.map((item) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Product Image
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: NetworkImage(item["image"]),
                                    fit: BoxFit.fill)
                                // color: Colors.amber
                                // image: DecorationImage(
                                //   image: NetworkImage(item["image"]),
                                //   fit: BoxFit.cover,
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
                                  item["title"],
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
                                    // if (item["realprice"] != null)
                                    Text(
                                      "\$${item["realprice"]}",
                                      style: const TextStyle(
                                        decoration: TextDecoration.lineThrough,
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
                                        color: Color(
                                          // 0xffFF0000
                                          item["color"],
                                        ),
                                      ),
                                    ),
                                    const Spacer(),

                                    // Quantity Selector
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
                AddToCartReceipt(),
                const SizedBox(height: 20),
                GestureDetector(
                    onTap: () {
                      // controller.totalPrice.value = 0;
                    },
                    child: const LargeButtonReusable(title: "Place Order")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
