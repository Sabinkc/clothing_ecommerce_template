import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';
import 'package:d_and_s/app/modules/reusable_widgets/CarouselSliderReusable.dart';
import 'package:d_and_s/app/modules/reusable_widgets/ProductDetailView/ProductDetail_Attributes.dart';
import 'package:d_and_s/app/modules/reusable_widgets/ProductDetailView/ProductDetails_Review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../CustomClickableContainer.dart';
import 'ProductDetailCircularColoredContainer.dart';
import 'ProductDetailViewReusableRow.dart';

class ProductDetailView extends StatelessWidget {
  final List<String> imgList = [
    'https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  final controller = Get.put(HomeController());
  final String title;
  final String description;
  // final List<int> productColors;

  final Map data;
  // final Map attributesdata;
  ProductDetailView({
    super.key,
    required this.title,
    required this.description,
    // required this.productColors,
    required this.data,
    // required this.attributesdata,
  });

  @override
  Widget build(BuildContext context) {
    var titleShow = controller.detailViewProductTitleShow;
    var descriptionShow = controller.detailViewProductDescShow;
    // Map test = data["attributes"];
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CarouselSliderReusable(imgList: imgList),
              CustomClickableContainer(coloredImgUrl: data["color"],),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Category: Others",
                      style: TextStyle(
                        fontSize: TextSize.small,
                        color: AppColors.silver,
                      ),
                    ),
                    SizedBox(height: 10),
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          titleShow.value = !titleShow.value;
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                data["name"],
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
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "4.1 Reviews",
                          style: TextStyle(
                            fontSize: TextSize.small,
                            color: AppColors.silver,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Colors :",
                      style: TextStyle(
                        fontSize: TextSize.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    ProductDetailCircularColoredContainer(
                        colorList: data["color"]),
                    SizedBox(height: 10),
                    Text(
                      "Descriptions",
                      style: TextStyle(
                        fontSize: TextSize.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            description,
                            style: TextStyle(
                              fontSize: TextSize.small,
                              overflow: descriptionShow.value == true
                                  ? TextOverflow.clip
                                  : TextOverflow.ellipsis,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              descriptionShow.value = !descriptionShow.value;
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
                    SizedBox(height: 10),
                    ProductDetailAttributes(
                      attributes: data["attributes"] ?? "",
                    ),
                    Divider(
                      color: AppColors.lightSilver, // Color of the line
                      thickness: 5, // Thickness of the line
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Get.to(ProductDetailReview(
                          reviews: data["reviews"] ?? "",
                        ));
                      },
                      child: ProductDetailViewReusableRow(
                        title: "Reviews",
                        icons: Icon(Icons.reviews),
                      ),
                    ),
                    Divider(
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
    );
  }
}
