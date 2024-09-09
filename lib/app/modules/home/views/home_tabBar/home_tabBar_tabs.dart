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
        "color": {
          0xffFF0000: [
            "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
            "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
          ],
          0xff00FF00: [
            "https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80",
            "https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80",
          ],
          0xff0000FF: [
            "https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=8",
            "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
          ]
        },
        "reviews": [
          {
            "profile_pic":
                "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
            "name": "Round Neck",
            "date": "1/2/2024",
            "review":
                "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
            "reviews_img":
                "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
          },
          {
            "profile_pic":
                "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
            "name": "b",
            "date": "1/2/2024",
            "review":
                "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
            "reviews_img":
                "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
          },
        ],
        "attributes": {
          "Neckline": "Round Neck",
          "Style": "Casual",
          "Details": "Backless, Pleated, Zipper",
          "Color": "Pink",
          "Pattern Type": "Plain",
          "Item id": "123456789",
        },
      },
      {
        "name": "Sports Watch",
        "price": "20,000",
        "color": {
          0xffFF0000: [
            "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
            "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
          ],
          0xff00FF00: [
            "https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80",
            "https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80",
          ],
          0xff0000FF: [
            "https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=8",
            "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
          ],
        },
        "reviews": [
          {
            "profile_pic":
                "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
            "name": "a",
            "date": "1/2/2024",
            "review":
                "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
            "reviews_img":
                "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
          },
        ],
        "attributes": {
          "Neckline": "Round Neck",
          "Style": "Casual",
          "Details": "Backless, Pleated, Zipper",
          "Color": "Pink",
          "Pattern Type": "Plain",
          "Item id": "123456789",
        },
      },
    ],
    // "Shirts": [
    //   {
    //     "name": "Casual Shirt",
    //     "price": "2,000",
    //     "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
    //     "reviews": [
    //       {
    //         "profile_pic":
    //             "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
    //         "name": "b",
    //         "date": "1/2/2024",
    //         "review":
    //             "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    //         "reviews_img":
    //             "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
    //       },
    //     ],
    //     "attributes": {
    //       "Neckline": "Round Neck",
    //       "Style": "Casual",
    //       "Details": "Backless, Pleated, Zipper",
    //       "Color": "Pink",
    //       "Pattern Type": "Plain",
    //       "Item id": "123456789",
    //     },
    //   },
    //   {
    //     "name": "Formal Shirt",
    //     "price": "3,000",
    //     "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
    //     "reviews": [
    //       {
    //         "profile_pic":
    //             "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
    //         "name": "Round Neck",
    //         "date": "1/2/2024",
    //         "review":
    //             "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    //         "reviews_img":
    //             "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
    //       },
    //     ],
    //     "attributes": {
    //       "Neckline": "Round Neck",
    //       "Style": "Casual",
    //       "Details": "Backless, Pleated, Zipper",
    //       "Color": "Pink",
    //       "Pattern Type": "Plain",
    //       "Item id": "123456789",
    //     },
    //   },
    // ],
    // "Bags": [
    //   {
    //     "name": "Leather Bag",
    //     "price": "5,000",
    //     "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
    //     "reviews": [
    //       {
    //         "profile_pic":
    //             "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
    //         "name": "Round Neck",
    //         "date": "1/2/2024",
    //         "review":
    //             "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    //         "reviews_img":
    //             "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
    //       },
    //     ],
    //     "attributes": {
    //       "Neckline": "Round Neck",
    //       "Style": "Casual",
    //       "Details": "Backless, Pleated, Zipper",
    //       "Color": "Pink",
    //       "Pattern Type": "Plain",
    //       "Item id": "123456789",
    //     },
    //   },
    //   {
    //     "name": "Backpack",
    //     "price": "3,000",
    //     "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
    //     "reviews": [
    //       {
    //         "profile_pic":
    //             "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
    //         "name": "Round Neck",
    //         "date": "1/2/2024",
    //         "review":
    //             "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    //         "reviews_img":
    //             "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
    //       },
    //     ],
    //     "attributes": {
    //       "Neckline": "Round Neck",
    //       "Style": "Casual",
    //       "Details": "Backless, Pleated, Zipper",
    //       "Color": "Pink",
    //       "Pattern Type": "Plain",
    //       "Item id": "123456789",
    //     },
    //   },
    // ],
    // "Clothing": [
    //   {
    //     "name": "Clothing",
    //     "price": "5,000",
    //     "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
    //     "reviews": [
    //       {
    //         "profile_pic":
    //             "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
    //         "name": "Round Neck",
    //         "date": "1/2/2024",
    //         "review":
    //             "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    //         "reviews_img":
    //             "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
    //       },
    //     ],
    //     "attributes": {
    //       "Neckline": "Round Neck",
    //       "Style": "Casual",
    //       "Details": "Backless, Pleated, Zipper",
    //       "Color": "Pink",
    //       "Pattern Type": "Plain",
    //       "Item id": "123456789",
    //     },
    //   },
    //   {
    //     "name": "Clothing",
    //     "price": "3,000",
    //     "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
    //     "reviews": [
    //       {
    //         "profile_pic":
    //             "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
    //         "name": "Round Neck",
    //         "date": "1/2/2024",
    //         "review":
    //             "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    //         "reviews_img":
    //             "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
    //       },
    //     ],
    //     "attributes": {
    //       "Neckline": "Round Neck",
    //       "Style": "Casual",
    //       "Details": "Backless, Pleated, Zipper",
    //       "Color": "Pink",
    //       "Pattern Type": "Plain",
    //       "Item id": "123456789",
    //     },
    //   },
    // ],
    // "Shoes": [
    //   {
    //     "name": "Shoes",
    //     "price": "5,000",
    //     "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
    //     "reviews": [
    //       {
    //         "profile_pic":
    //             "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
    //         "name": "Round Neck",
    //         "date": "1/2/2024",
    //         "review":
    //             "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    //         "reviews_img":
    //             "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
    //       },
    //     ],
    //     "attributes": {
    //       "Neckline": "Round Neck",
    //       "Style": "Casual",
    //       "Details": "Backless, Pleated, Zipper",
    //       "Color": "Pink",
    //       "Pattern Type": "Plain",
    //       "Item id": "123456789",
    //     },
    //   },
    //   {
    //     "name": "Shoes",
    //     "price": "3,000",
    //     "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
    //     "reviews": [
    //       {
    //         "profile_pic":
    //             "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
    //         "name": "Round Neck",
    //         "date": "1/2/2024",
    //         "review":
    //             "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    //         "reviews_img":
    //             "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
    //       },
    //     ],
    //     "attributes": {
    //       "Neckline": "Round Neck",
    //       "Style": "Casual",
    //       "Details": "Backless, Pleated, Zipper",
    //       "Color": "Pink",
    //       "Pattern Type": "Plain",
    //       "Item id": "123456789",
    //     },
    //   },
    // ],
    // "Socks": [
    //   {
    //     "name": "Socks",
    //     "price": "5,000",
    //     "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
    //     "reviews": [
    //       {
    //         "profile_pic":
    //             "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
    //         "name": "Round Neck",
    //         "date": "1/2/2024",
    //         "review":
    //             "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    //         "reviews_img":
    //             "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
    //       },
    //     ],
    //     "attributes": {
    //       "Neckline": "Round Neck",
    //       "Style": "Casual",
    //       "Details": "Backless, Pleated, Zipper",
    //       "Color": "Pink",
    //       "Pattern Type": "Plain",
    //       "Item id": "123456789",
    //     },
    //   },
    //   {
    //     "name": "Socks",
    //     "price": "3,000",
    //     "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
    //     "reviews": [
    //       {
    //         "profile_pic":
    //             "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
    //         "name": "Round Neck",
    //         "date": "1/2/2024",
    //         "review":
    //             "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    //         "reviews_img":
    //             "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
    //       },
    //     ],
    //     "attributes": {
    //       "Neckline": "Round Neck",
    //       "Style": "Casual",
    //       "Details": "Backless, Pleated, Zipper",
    //       "Color": "Pink",
    //       "Pattern Type": "Plain",
    //       "Item id": "123456789",
    //     },
    //   },
    // ],
    // "More": [
    //   {
    //     "name": "More",
    //     "price": "5,000",
    //     "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
    //     "reviews": [
    //       {
    //         "profile_pic":
    //             "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
    //         "name": "Round Neck",
    //         "date": "1/2/2024",
    //         "review":
    //             "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    //         "reviews_img":
    //             "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
    //       },
    //     ],
    //     "attributes": {
    //       "Neckline": "Round Neck",
    //       "Style": "Casual",
    //       "Details": "Backless, Pleated, Zipper",
    //       "Color": "Pink",
    //       "Pattern Type": "Plain",
    //       "Item id": "123456789",
    //     },
    //   },
    //   {
    //     "name": "More",
    //     "price": "3,000",
    //     "color": [0xffFF0000, 0xff00FF00, 0xff0000FF],
    //     "reviews": [
    //       {
    //         "profile_pic":
    //             "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
    //         "name": "Round Neck",
    //         "date": "1/2/2024",
    //         "review":
    //             "A review is an evaluation of a publication, product, service, or company or a critical take on current affairs in literature, politics or culture. In addition to a critical evaluation, the review's author may assign the work a rating to indicate its relative merit.",
    //         "reviews_img":
    //             "https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png",
    //       },
    //     ],
    //     "attributes": {
    //       "Neckline": "Round Neck",
    //       "Style": "Casual",
    //       "Details": "Backless, Pleated, Zipper",
    //       "Color": "Pink",
    //       "Pattern Type": "Plain",
    //       "Item id": "123456789",
    //     },
    //   },
    // ],
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
                        // var productColors = (product["color"] as List<dynamic>)
                        //     .map((e) => e as int)
                        //     .toList();
                        var reviews = product["reviews"] as List<dynamic>;
                        var firstReview =
                            reviews.isNotEmpty ? reviews[0] : null;
                        Get.to(
                          ProductDetailView(
                            title: product["title"] ?? "NO TITLE",
                            description:
                                product["description"] ?? "NO DESCRIPTION",
                            // productColors: productColors,

                            data: product, 
                            // attributesdata: products,
                            // product["color"],
                            // productColors: productColors,
                          ),
                        );
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
