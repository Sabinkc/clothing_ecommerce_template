import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';
import 'package:d_and_s/app/modules/reusable_widgets/CarouselSliderReusable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailView extends StatelessWidget {
  final List<String> imgList = [
    'https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  final List rowContents = [];
  final controller = Get.put(HomeController());
  final String title;
  final String description;
  final List<int> productColors;

  ProductDetailView({
    super.key,
    required this.title,
    required this.description,
    required this.productColors,
  });

  @override
  Widget build(BuildContext context) {
    var titleShow = controller.detailViewProductTitleShow;
    var descriptionShow = controller.detailViewProductDescShow;
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CarouselSliderReusable(imgList: imgList),
                CustomClickableContainer(),
                SizedBox(height: 10),
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
                            title,
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
                ProductDetailCircularColoredContainer(colorList: productColors),

                // Container(
                //   height: 40,
                //   width: 40,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     border: Border.all(
                //       color: Colors.red,
                //       width: 2.0,
                //     ),
                //   ),
                //   child: Center(
                //     child: Container(
                //       height: 30,
                //       width: 30,
                //       decoration: BoxDecoration(
                //           shape: BoxShape.circle, color: Colors.red),
                //     ),
                //   ),
                // ),
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
                          // fontWeight: descriptionShow.value == true
                          //     ? FontWeight.w100
                          //     : FontWeight.w800,
                          overflow: descriptionShow.value == true
                              ? TextOverflow.clip
                              : TextOverflow.ellipsis,
                          // color: controller.productTitleShow.value == true
                          //     ? Colors.red
                          //     : Colors.black,
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
                ProductDetailViewReusableRow(
                    title: "Specifications", icons: Icon(Icons.memory)),
                Divider(
                  color: AppColors.lightSilver, // Color of the line
                  thickness: 5, // Thickness of the line
                ),
                SizedBox(height: 10),
                ProductDetailViewReusableRow(
                    title: "Reviews", icons: Icon(Icons.rate_review_sharp)),
                Divider(
                  color: AppColors.lightSilver, // Color of the line
                  thickness: 5, // Thickness of the line
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductDetailCircularColoredContainer extends StatelessWidget {
  final List<int> colorList;
  const ProductDetailCircularColoredContainer({
    super.key,
    required this.colorList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: colorList.length,
          itemBuilder: (BuildContext context, index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(colorList[index]),
                      width: 2.0,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(colorList[index])),
                    ),
                  ),
                ),
              )),
    );
  }
}

class ProductDetailViewReusableRow extends StatelessWidget {
  final String title;
  final Icon icons;
  ProductDetailViewReusableRow(
      {super.key, required this.title, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          icons,
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: TextSize.normal,
            ),
          ),
          Spacer(),
          Icon(Icons.arrow_right),
        ],
      ),
    );
  }
}

class CustomClickableContainer extends StatelessWidget {
  final controller = Get.put(HomeController());
  // var currentIndex = 0.obs;
  final List<String> imgList = [
    'https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png',
    'https://plus.unsplash.com/premium_photo-1664202526475-8f43ee70166d?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1504198458649-3128b932f49e?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1506629082955-511b1aa562c8?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1618898909019-010e4e234c55?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1561909848-977d0617f275?q=80&w=2380&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];
  // final String img;
  CustomClickableContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var count = controller.detailViewProductCustomClickableContainer;
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Main Image Container
          Container(
            height: 300,
            margin: EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(
                  imgList[count.value],
                ),
                fit: BoxFit.cover,
              ),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.5),
              //     spreadRadius: 3,
              //     blurRadius: 7,
              //     offset: Offset(0, 3), // changes position of shadow
              //   ),
              // ],
            ),
          ),
          SizedBox(height: 20),

          // Horizontal Image Scroller
          Container(
            height: 80,
            margin: EdgeInsets.symmetric(horizontal: 0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imgList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    count.value = index;
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color:
                              count.value == index ? Colors.blue : Colors.white,
                          width: 2),
                      image: DecorationImage(
                        image: NetworkImage(imgList[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
