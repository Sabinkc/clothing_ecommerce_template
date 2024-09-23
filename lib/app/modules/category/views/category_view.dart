import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../data/category_data.dart';
import '../../home/controllers/home_controller.dart';
import '../../home/views/home_category_view.dart';

import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  final controllerHomeController = Get.put(HomeController());
  CategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightSilver,
        title: Text("Category"),
        centerTitle: false,
      ),
      body: Container(
        color: AppColors.lightSilver,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: categoryData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        2, // Adjust this for wider layouts if needed
                    crossAxisSpacing: 12.0, // Space between grid items
                    mainAxisSpacing: 0.0, // Space between grid items
                    childAspectRatio:
                        1.3, // Adjust the aspect ratio to make it neat
                  ),
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        controllerHomeController.index.value =
                            categoryData[index]["category_name"];
                        Get.to(HomeCategoryDetailView());
                      },
                      child:
                          // ShortTopCourseCard(
                          //   background: Colors.black,
                          //   title: categoryData[index]["category_name"],
                          //   image: categoryData[index]["category_image"],
                          // ),
                          LongCourseCard(
                        background: Color(0xFFFFAA5B),
                        title: categoryData[index]["category_name"],
                        image: categoryData[index]["category_image"],
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(12),
                      //   ),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Container(
                      //         height: 80,
                      //         width: 80,
                      //         decoration: BoxDecoration(
                      //           shape: BoxShape.circle,
                      //           color: Colors.white,
                      //           border: Border.all(
                      //               color: Colors.grey.withOpacity(0.3),
                      //               width: 1),
                      //           image: DecorationImage(
                      //             image: NetworkImage(
                      //                 categoryData[index]["category_image"]),
                      //             fit: BoxFit.contain,
                      //           ),
                      //         ),
                      //       ),
                      //       SizedBox(height: 10),
                      //       Text(
                      //         categoryData[index]["category_name"],
                      //         overflow: TextOverflow.ellipsis,
                      //         style: TextStyle(
                      //           color: Colors.grey[700],
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: TextSize.small,
                      //         ),
                      //         textAlign: TextAlign.center,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LongCourseCard extends StatelessWidget {
  final Color background;
  final String title;
  final String image;

  const LongCourseCard({
    Key? key,
    required this.background,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      width: 155,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover, // Ensures the image covers the container
        ),
        color: background,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white, width: 1),
        boxShadow: [
          BoxShadow(
            blurRadius: 50,
            color: const Color(0xFF0B0C2A).withOpacity(.09),
            offset: const Offset(10, 10),
          )
        ],
      ),
      child: Stack(
        children: [
          // Semi-transparent overlay for better text visibility
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3), // Semi-transparent overlay
              borderRadius: BorderRadius.circular(16), // Same as parent radius
            ),
          ),
          // Centering the text
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 8),
              child: Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize:
                          18, // You can adjust based on your design preference
                      fontWeight: FontWeight.bold, // Bold text for clarity
                      color: Colors.white, // White text for contrast
                      letterSpacing: 1.2, // Slight letter spacing for elegance
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    EvaIcons.diagonal_arrow_right_up,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShortTopCourseCard extends StatelessWidget {
  final Color background;
  final String title;

  final String image;
  const ShortTopCourseCard(
      {Key? key,
      required this.background,
      required this.title,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      width: 155,
      height: 163,
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(34),
          border: Border.all(color: Colors.white, width: 10),
          boxShadow: [
            BoxShadow(
                blurRadius: 50,
                color: const Color(0xFF0B0C2A).withOpacity(.09),
                offset: const Offset(10, 10))
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(height: 16),
        Text(title,
            style: TextStyle(
                fontSize: TextSize.small,
                color: Colors.white,
                fontWeight: FontWeight.w900)),
        Expanded(
            child: Icon(
          Icons.watch,
          size: 100,
          color: Colors.white,
        )
            // Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: NetworkImage(image),
            //     ),
            //   ),
            // ),
            ),
      ]),
    );
  }
}
