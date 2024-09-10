import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailCircularColoredContainer extends StatelessWidget {
  final Map colorList;
  ProductDetailCircularColoredContainer({
    super.key,
    required this.colorList,
  });
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    // controller.a.value = colorList.values.first;
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal, // Make it horizontal if needed
        shrinkWrap: true,
        children: colorList.entries
            .map(
              (e) => GestureDetector(
                onTap: () {
                  controller.updateSelectedColor(e.key, e.value);
                  // controller.selectedColorIndex.value = //i want the index here
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Obx(
                    () => Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(controller.selectedColor.value == e.key
                              ? e.key
                              : 0x00000000), // Use e.key as the color for the border
                          width: 2.0,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(e
                                .key), // Use e.value as the color for the inner circle
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
// ListView.builder(
//     scrollDirection: Axis.horizontal,
//     shrinkWrap: true,
//     itemCount: colorList.length,
//     itemBuilder: (BuildContext context, index) =>
//     Map<String, dynamic> item = colorList[index]; // Access the map at index
//     String key = item.keys.first;  // Get the first key (if necessary)
//     String value = item.values.first;  // Assuming values are color codes

//     Padding(
//           padding: const EdgeInsets.only(right: 10),
//           child: Container(
//             height: 40,
//             width: 40,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               border: Border.all(
//                 color: Color(key),
//                 width: 2.0,
//               ),
//             ),
//             child: Center(
//               child: Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Color(value)),
//               ),
//             ),
//           ),
//         ),),
//     );
//   }
// }
