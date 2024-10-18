import 'package:d_and_s/app/modules/product_detail/controllers/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailCircularColoredContainer extends StatelessWidget {
  final Map colorList;
  ProductDetailCircularColoredContainer({
    super.key,
    required this.colorList,
  });
  final controller = Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Display the name of the selected color
        Obx(() => Text(
              'Color: ${controller.selectedColorName.value}',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
        SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: colorList.entries
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      controller.updateSelectedColor(e.key, e.value);
                      controller.updateColor(e.key, e.value);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Obx(
                        () => Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(
                                  controller.selectedColor.value == e.key
                                      ? e.key
                                      : 0x00000000), // Border color
                              width: 2.0,
                            ),
                          ),
                          child: Center(
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(e.key), // Inner circle color
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
        ),
      ],
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
