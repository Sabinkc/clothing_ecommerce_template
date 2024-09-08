import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';
import 'package:d_and_s/app/modules/reusable_widgets/ProductDetailView/ProductDetailView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_size.dart';

class HomeTabBarTabs extends StatelessWidget {
  // final Function(int) onIndexChange;

  final Map products = {
    "Watches": [
      {
        "name": "Luxury Watch",
        "price": "50,000",
        "title":
            "Lenovo IdeaPad 1 15IGL7 11TH GEN PRCOESSOR INTEL CELERON N4020 8GB DDR4 RAM 256GB SSD 15.6 HD Display",
        "description":
            "Lenovo IdeaPad 1 15IGL7 11TH GEN PRCOESSOR INTEL CELERON N4020 8GB DDR4 RAM 256GB SSD 15.6 HD Display",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
      {
        "name": "Sports Watch",
        "price": "20,000",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
    ],
    "Shirts": [
      {
        "name": "Casual Shirt",
        "price": "2,000",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
      {
        "name": "Formal Shirt",
        "price": "3,000",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
    ],
    "Bags": [
      {
        "name": "Leather Bag",
        "price": "5,000",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
      {
        "name": "Backpack",
        "price": "3,000",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
    ],
    "Clothing": [
      {
        "name": "Clothing",
        "price": "5,000",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
      {
        "name": "Clothing",
        "price": "3,000",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
    ],
    "Shoes": [
      {
        "name": "Shoes",
        "price": "5,000",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
      {
        "name": "Shoes",
        "price": "3,000",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
    ],
    "Socks": [
      {
        "name": "Socks",
        "price": "5,000",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
      {
        "name": "Socks",
        "price": "3,000",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
    ],
    "More": [
      {
        "name": "More",
        "price": "5,000",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
      {
        "name": "More",
        "price": "3,000",
        "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
      },
    ],
    // Add more categories here...
  };

  HomeTabBarTabs({
    super.key,
  });
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        // Get the selected tab's products list
        var selectedProducts = products[controller.index.value] ?? [];

        return GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: selectedProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (BuildContext context, index) {
            var product = selectedProducts[index];

            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.silverBorder, width: 5),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                      
                        var productColors = (product["color"] as List<dynamic>)
                            .map((e) => e as int)
                            .toList();

                       
                        Get.to(ProductDetailView(
                            title: product["title"] ?? "NO TITLE",
                            description:
                                product["description"] ?? "NO DESCRIPTION",
                            productColors: productColors
                            // product["color"],
                            // productColors: productColors,
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png'), // Replace with actual image URL
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: 100,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      product["name"] ?? "",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: TextSize.small),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Rs. ${product["price"]}",
                      style: TextStyle(
                        fontSize: TextSize.small,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
