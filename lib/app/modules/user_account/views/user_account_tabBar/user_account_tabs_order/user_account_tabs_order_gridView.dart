// ignore_for_file: prefer_interpolation_to_compose_strings, file_names

import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabs_order/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/text_size.dart';
import '../../../controllers/user_account_controller.dart';

class UserAccountTabsOrderGridView extends StatelessWidget {
  final userAccController = Get.put(UserAccountController());
  final List img = [
    'https://images.pexels.com/photos/1192335/pexels-photo-1192335.jpeg?cs=srgb&dl=pexels-lilartsy-1192335.jpg&fm=jpg',
    'https://plus.unsplash.com/premium_photo-1708274147720-abd218b3a3bd?q=80&w=3348&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=3426&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1511556532299-8f662fc26c06?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];
  final List state = [
    'Processing',
    'on Delivery',
    'Processing',
    'on Delivery',
  ];
  final List orderId = [
    '#123Abc',
    '#456Def',
    '#789Ghi',
    '#012Jkl',
  ];
  final List realPrice = [
    '1000',
    '900',
    '1200',
    '2000',
  ];
  final List price = [
    '900',
    '800',
    '1000',
    '1600',
  ];
  final List date = [
    '2024/09/26 dsfkasdfklasjfkj',
    '2024/09/27',
    '2024/09/28',
    '2024/09/29',
  ];
  UserAccountTabsOrderGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: img.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: userAccController.changeListAndGrid.value ? 2 : 1,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 10.0,
          // childAspectRatio: 0.65,
          childAspectRatio:
              userAccController.changeListAndGrid.value ? 0.65 : 1.3,
          // 1.3,
        ),
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                // border: Border.all(color: AppColors.silverBorder, width: 5),
                color: Colors.white,
                // borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          OrderDetails(
                            orderID: orderId[index],
                            estimatedTime: "26 Spet 2024",
                            title: "Product A",
                            size: "S",
                            price: price[index],
                            img: img[index],
                            realprice: realPrice[index],
                            quantity: '1',
                            status: state[index],
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(img[
                                    index]), // Replace with actual image URL
                                fit: BoxFit.cover,
                              ),
                            ),
                            height: Adaptive.h(20),
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: GestureDetector(
                              onTap: () {
                                Get.to(
                                  OrderDetails(
                                    orderID: orderId[index],
                                    estimatedTime: "26 Spet 2024",
                                    title: "Product A",
                                    size: "S",
                                    price: price[index],
                                    img: img[index],
                                    realprice: realPrice[index],
                                    quantity: '1',
                                    status: state[index],
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.lightSilver,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.remove_red_eye_outlined,
                                    size: 20,
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "State: " + state[index],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: TextSize.small,
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Order ID: ",
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: TextSize.small,
                            // fontWeight: FontWeight.bold,
                            // color: Colors.red,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            orderId[index],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: TextSize.small,
                              fontWeight: FontWeight.bold,
                              // color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    // Row(
                    //   children: [
                    //     Text(
                    //       realPrice[index],
                    //       style: TextStyle(
                    //         fontSize: TextSize.small,
                    //         decoration: TextDecoration.lineThrough,
                    //         decorationThickness: 2,
                    //         decorationColor: Colors.grey,

                    //         color: Colors.grey,
                    //         fontWeight: FontWeight.w500,
                    //         // fontWeight: FontWeight.bold,
                    //         // color: Colors.red,
                    //       ),
                    //     ),
                    //     SizedBox(width: 10),
                    //     Text(
                    //       price[index],
                    //       style: TextStyle(
                    //         fontSize: TextSize.small,
                    //         fontWeight: FontWeight.bold,
                    //         color: Colors.red,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Date: ",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: TextSize.small,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            date[index],
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: TextSize.small,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
