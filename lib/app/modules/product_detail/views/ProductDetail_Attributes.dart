// ignore_for_file: file_names

import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:flutter/material.dart';

import 'ProductDetailViewReusableRow.dart';

class ProductDetailAttributes extends StatelessWidget {
  final Map attributes;
  const ProductDetailAttributes({super.key, required this.attributes});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (BuildContext context) {
            return Container(
              height: 400,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Header section
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 8),
                    child: Center(
                      child: Container(
                        width: 50,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Attributes',
                      style: TextStyle(
                        fontSize: TextSize.normal,
                        fontWeight: FontWeight.w700,
                        color: AppColors.titleColorGrey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Attributes list
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey[100],
                      ),
                      child: ListView.builder(
                        itemCount: attributes.length,
                        itemBuilder: (context, index) {
                          final attribute = attributes.entries.elementAt(index);
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 16),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    "${attribute.key}: ",
                                    style: TextStyle(
                                      fontSize: TextSize.small,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.titleColorGrey,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 7,
                                  child: Text(
                                    attribute.value ?? "",
                                    style: TextStyle(
                                      fontSize: TextSize.small,
                                      color: AppColors.textColorGrey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: const ProductDetailViewReusableRow(
        title: "Attributes",
        icons: Icon(Icons.checkroom),
      ),
    );
  }
}

// class ProductDetailAttributes extends StatelessWidget {
//   final Map attributes;
//   ProductDetailAttributes({super.key, required this.attributes});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         showModalBottomSheet<void>(
//           context: context,
//           builder: (BuildContext context) {
//             return Container(
//               // color: Colors.white,
//               height: 400,
//               width: double.infinity,
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     SizedBox(height: 10),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20.0),
//                       child: Text(
//                         'Attributes',
//                         style: TextStyle(
//                             fontSize: TextSize.normal,
//                             fontWeight: FontWeight.w700),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Expanded(
//                       child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16),
//                             color: Colors.white,
//                           ),
//                           child: ListView(
//                             shrinkWrap: true,
//                             children: attributes.entries
//                                 .map((e) => Padding(
//                                       padding: const EdgeInsets.fromLTRB(
//                                           20, 10, 20, 10),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Row(
//                                             children: [
//                                               Text(
//                                                 "${e.key} : ",
//                                                 style: TextStyle(
//                                                   fontSize: TextSize.normal,
//                                                   fontWeight: FontWeight.w700,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 e.value ?? "",
//                                                 style: TextStyle(
//                                                   fontSize: TextSize.normal,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ))
//                                 .toList(),
//                           )

//                           //  ListView.builder(
//                           //   itemCount: attributes.length,
//                           //   itemBuilder: (BuildContext context, int index) {
//                           //     // Map<String, dynamic> item = attributes[index];
//                           //     String key = attributes.;
//                           //     String value = attributes.values.first;
//                           //     return Padding(
//                           //       padding:
//                           //           const EdgeInsets.fromLTRB(20, 10, 20, 10),
//                           //       child: Column(
//                           //         crossAxisAlignment: CrossAxisAlignment.start,
//                           //         children: [
//                           //           Row(
//                           //             children: [
//                           //               Text(
//                           //                 key,
//                           //                 style: TextStyle(
//                           //                   fontSize: TextSize.small,
//                           //                   fontWeight: FontWeight.w700,
//                           //                 ),
//                           //               ),
//                           //               Text(
//                           //                 '$value' ?? "",
//                           //                 style: TextStyle(
//                           //                   fontSize: TextSize.small,
//                           //                 ),
//                           //               ),
//                           //             ],
//                           //           ),
//                           //         ],
//                           //       ),
//                           //     );
//                           //   },
//                           // ),
//                           ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//       child: ProductDetailViewReusableRow(
//         title: "Attributes",
//         icons: Icon(Icons.checkroom),
//       ),
//     );
//   }
// }
