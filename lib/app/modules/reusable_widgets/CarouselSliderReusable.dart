import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/modules/category/views/category_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class CarouselSliderReusable extends StatelessWidget {
//   final List<String> imgList;
//   CarouselSliderReusable({super.key, required this.imgList});

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(0.0),
//       child: CarouselSlider(
//         options: CarouselOptions(
//           autoPlay: true,
//           enlargeStrategy: CenterPageEnlargeStrategy.zoom,
//           enlargeCenterPage: true,
//           aspectRatio: 2,
//         ),

//         items: imgList
//             .map((item) => Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 0),
//                   // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image: NetworkImage(item))),
//                   child: Image.network(
//                     item,
//                     fit: BoxFit.cover,
//                     width: double.infinity,
//                     height: double.infinity,
//                   ),
//                 ))
//             .toList(),
//       ),

//     );
//   }
// }
class CarouselSliderReusable extends StatelessWidget {
  var index = 0.obs;
  final List<String> imgList;
  CarouselSliderReusable({super.key, required this.imgList});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(
          () => Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    imgList[index.value],
                  ),
                  fit: BoxFit.fill),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 30,
          child: GestureDetector(
            onTap: () {
              Get.to(CategoryView());
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white, width: 3)),
              padding: EdgeInsets.all(10),
              child: Text(
                "Shop Now",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 125,
          left: 20,
          child: GestureDetector(
            onTap: () {
              if (index.value > 0) {
                index.value--; // Decrease the index safely
              } else {
                index.value = imgList.length - 1;
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(0)),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: 125,
          right: 20,
          child: GestureDetector(
            onTap: () {
              if (index.value < imgList.length - 1) {
                index.value++; // Increment index safely
              } else {
                index.value = 0; // Wrap around to the first image
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(0)),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
