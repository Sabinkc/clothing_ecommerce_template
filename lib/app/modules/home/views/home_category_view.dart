import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/category_data.dart';
import '../../category/controllers/category_controller.dart';
import '../../category/views/category_detail_view.dart';

class HomeCategoryView extends StatelessWidget {
  final controllerHomeController = Get.put(HomeController());
  final controllerCategory = Get.put(CategoryController());
  HomeCategoryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryData.length,
        itemBuilder: (BuildContext context, index) => GestureDetector(
          onTap: () {
            controllerHomeController.index.value =
                categoryData[index]["category_name"];

            List selectedCategory = categoryData
                .where((element) =>
                    element["category_name"] ==
                    controllerHomeController.index.value)
                .toList();

            // Set the subCategory to the first item of the sub_category list
            if (selectedCategory.isNotEmpty &&
                selectedCategory[0]["sub_category"] != null) {
              controllerCategory.subCategory.value =
                  selectedCategory[0]["sub_category"][0]["sub_category_id"];
            }
            Get.to(CategoryDetailView());
          },
          child: Container(
            margin: const EdgeInsets.only(left: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.2),
              //     spreadRadius: 2,
              //     blurRadius: 5,
              //     offset: Offset(2, 2), // shadow direction: bottom right
              //   ),
              // ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.3), width: 1),
                    image: DecorationImage(
                      image:
                          NetworkImage(categoryData[index]["category_image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  categoryData[index]["category_name"],
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey[700],
                    // fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// class HomeGridView extends StatelessWidget {
//   final controllerHomeController = Get.put(HomeController());
//   final List categories = [
//     "Shoes",
//     "Hoodie",
//     "Shirts",
//     "Jacket",
//     "Watches",
//     "Jeans",
//   ];

//   HomeGridView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//       // elevation: 5,
//       child: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           color: Colors.white,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: GridView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: categoryData.length,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3, // Adjust this for wider layouts if needed
//               crossAxisSpacing: 12.0, // Space between grid items
//               mainAxisSpacing: 10.0, // Space between grid items
//               childAspectRatio: 0.9, // Adjust the aspect ratio to make it neat
//             ),
//             itemBuilder: (BuildContext context, index) {
//               // var productCategory = products[categories[index]];

//               // // Get the first product in the category
//               // var firstProduct =
//               //     productCategory != null && productCategory.isNotEmpty
//               //         ? productCategory[0]
//               //         : null;

//               // // Extract the first color and its image URLs
//               // var firstColorUrls = firstProduct != null
//               //     ? firstProduct['color']?.values?.first
//               //     : null;

//               // // Get the first image URL if available
//               // var imageUrl = firstColorUrls != null && firstColorUrls.isNotEmpty
//               //     ? firstColorUrls[0]
//               //     : 'https://via.placeholder.com/150'; // Fallback placeholder image

//               return GestureDetector(
//                 onTap: () {
//                   controllerHomeController.index.value =
//                       categoryData[index]["category_name"];
//                   Get.to(HomeCategoryDetailView());
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     // boxShadow: [
//                     //   BoxShadow(
//                     //     color: Colors.grey.withOpacity(0.2),
//                     //     spreadRadius: 2,
//                     //     blurRadius: 5,
//                     //     offset: Offset(2, 2), // shadow direction: bottom right
//                     //   ),
//                     // ],
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 60,
//                         width: 60,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           border: Border.all(
//                               color: Colors.grey.withOpacity(0.3), width: 1),
//                           image: DecorationImage(
//                             image: NetworkImage(
//                                 categoryData[index]["category_image"]),
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       Text(
//                         categoryData[index]["category_name"],
//                         overflow: TextOverflow.ellipsis,
//                         style: TextStyle(
//                           color: Colors.grey[700],
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
