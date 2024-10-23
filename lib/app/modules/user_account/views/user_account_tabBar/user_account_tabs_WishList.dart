// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_size.dart';
import '../../../favourites/controllers/favourites_controller.dart';

import '../../../product_detail/views/product_detail_view.dart';

class UserAccountTabsWishList extends StatelessWidget {
  final controller = Get.put(FavouritesController());
  UserAccountTabsWishList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(
        () => Column(
          children: [
            controller.favoritesList.isEmpty
                ? Container(
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(
                            "assets/images/emptyWishList.png"), // Use AssetImage instead of Image.asset
                        fit: BoxFit
                            .cover, // Optional: Adjust image fit if necessary
                      ),
                    ),
                  )
                : Column(
                    children: controller.favoritesList.map((item) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Product Image
                            Container(
                              height: 120,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      item["color"].entries.first.value[0]
                                      // .entries.first.value,
                                      ),
                                  fit: BoxFit.contain,
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
                                    item["name"],
                                    style: TextStyle(
                                      color: AppColors.titleColorGrey,
                                      fontSize: TextSize.small,
                                      fontWeight: FontWeight.w700,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    maxLines: 2,
                                  ),
                                  const SizedBox(height: 10),

                                  // Product Size
                                  // Text(
                                  //   "Size: ${item["size"]}",
                                  //   style: const TextStyle(
                                  //     color: Colors.blue,
                                  //     fontSize: 14,
                                  //   ),
                                  // ),
                                  // const SizedBox(height: 5),

                                  // Price and Discounted Price
                                  Row(
                                    children: [
                                      Text(
                                        "Rs. ${item["price"]}",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: AppColors.primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      // if (item["realprice"] != null)
                                      Text(
                                        "\$${item["realprice"]}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: TextSize.small,
                                            color: AppColors.textColorGrey),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      // Product Color
                                      // Container(
                                      //   height: 20,
                                      //   width: 20,
                                      //   decoration: BoxDecoration(
                                      //     shape: BoxShape.circle,
                                      //     color: Color(
                                      //       // 0xffFF0000
                                      //       item["color"],
                                      //     ),
                                      //   ),
                                      // ),
                                      GestureDetector(
                                          onTap: () {
                                            Get.to(
                                                ProductDetailView(data: item));
                                          },
                                          child: Text(
                                            "View Product",
                                            style: TextStyle(
                                                fontSize: TextSize.small,
                                                color: AppColors.primaryColor),
                                          )),

                                      const Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                          controller.favoritesList.removeWhere(
                                            (element) =>
                                                element["product_id"] ==
                                                item["product_id"],
                                          );
                                        },
                                        child: const Icon(
                                          Icons.delete,
                                          color: AppColors.textColorGrey,
                                        ),
                                      ),
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
            const SizedBox(height: 10),
            // Text(
            //   "Recommended Items",
            //   style: TextStyle(
            //     fontSize: TextSize.normal,
            //   ),
            // ),
            // const SizedBox(height: 10),
            // HomeTabBarTabs(),
          ],
        ),
      ),
    );
  }
}
