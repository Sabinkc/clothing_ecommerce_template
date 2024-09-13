import 'package:d_and_s/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/text_size.dart';
import 'ProductDetailViewReusableRow.dart';

class ProductDetailAttributes extends StatelessWidget {
  final Map attributes;
  ProductDetailAttributes({super.key, required this.attributes});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              // color: Colors.white,
              height: 400,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        'Attributes',
                        style: TextStyle(
                            fontSize: TextSize.normal,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                          ),
                          child: ListView(
                            shrinkWrap: true,
                            children: attributes.entries
                                .map((e) => Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 20, 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "${e.key} : " ?? "",
                                                style: TextStyle(
                                                  fontSize: TextSize.small,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                e.value ?? "",
                                                style: TextStyle(
                                                  fontSize: TextSize.small,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ))
                                .toList(),
                          )

                          //  ListView.builder(
                          //   itemCount: attributes.length,
                          //   itemBuilder: (BuildContext context, int index) {
                          //     // Map<String, dynamic> item = attributes[index];
                          //     String key = attributes.;
                          //     String value = attributes.values.first;
                          //     return Padding(
                          //       padding:
                          //           const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          //       child: Column(
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         children: [
                          //           Row(
                          //             children: [
                          //               Text(
                          //                 key,
                          //                 style: TextStyle(
                          //                   fontSize: TextSize.small,
                          //                   fontWeight: FontWeight.w700,
                          //                 ),
                          //               ),
                          //               Text(
                          //                 '$value' ?? "",
                          //                 style: TextStyle(
                          //                   fontSize: TextSize.small,
                          //                 ),
                          //               ),
                          //             ],
                          //           ),
                          //         ],
                          //       ),
                          //     );
                          //   },
                          // ),
                          ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: ProductDetailViewReusableRow(
        title: "Attributes",
        icons: Icon(Icons.checkroom),
      ),
    );
  }
}
