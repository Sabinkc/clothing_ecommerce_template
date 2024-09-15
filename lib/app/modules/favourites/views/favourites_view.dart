import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_size.dart';
import '../../home/views/home_tabBar/home_tabBar_tabs.dart';
import '../controllers/favourites_controller.dart';

class FavouritesView extends GetView<FavouritesController> {
  final controller = Get.put(FavouritesController());
  FavouritesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Favourites'),
        centerTitle: false,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                controller.favouritesList.isEmpty
                    ? Container(
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/noFavorites.png"), // Use AssetImage instead of Image.asset
                            fit: BoxFit
                                .cover, // Optional: Adjust image fit if necessary
                          ),
                        ),
                      )
                    : Column(
                        children: controller.favouritesList.map((item) {
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          // Product Color
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
                                          GestureDetector(
                                            onTap: () {
                                              controller.favouritesList
                                                  .removeWhere(
                                                (element) =>
                                                    element["cartId"] ==
                                                    item["cartId"],
                                              );
                                              controller
                                                  .update(); // Update the UI after deletion
                                              controller.favouritesList.value;
                                            },
                                            child: Icon(
                                              Icons.delete,
                                              color: Colors.red,
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
                Text(
                  "Recommended Items",
                  style: TextStyle(
                      fontSize: TextSize.normal, color: AppColors.lightBlue),
                ),
                const SizedBox(height: 10),
                HomeTabBarTabs(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
