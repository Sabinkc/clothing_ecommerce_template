import 'package:d_and_s/app/modules/user_account/views/user_account_tabBar/user_account_tabs_review/user_add_review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../constants/text_size.dart';

class UserAccountTabsReview extends StatelessWidget {
  final List img = [
    'https://images.pexels.com/photos/1192335/pexels-photo-1192335.jpeg?cs=srgb&dl=pexels-lilartsy-1192335.jpg&fm=jpg',
    'https://plus.unsplash.com/premium_photo-1708274147720-abd218b3a3bd?q=80&w=3348&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=3426&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1511556532299-8f662fc26c06?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];
  final List name = [
    "Relaxed Fit Trucker Hoodie",
    "Rowan Shirt for Men",
    "501® Original Fit Men's Jeans",
    "Unisex Shoes",
  ];
  final List price = [
    "1,000",
    "2,000",
    "3,000",
    "4,000",
  ];
  UserAccountTabsReview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: img.length,
      itemBuilder: (BuildContext context, index) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
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
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                img[index]), // Replace with actual image URL
                            fit: BoxFit.contain,
                          ),
                        ),
                        height: Adaptive.h(12),
                        width: 150,
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name[index],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: TextSize.small,
                                  fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Rs. ${price[index]}",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: TextSize.small,
                                  fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(height: 5),
                            const SizedBox(height: 5),
                            GestureDetector(
                              onTap: () {
                                Get.to(
                                  UserAddReview(
                                    img: img[index],
                                    title: name[index],
                                    price: price[index],
                                  ),
                                );
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 5, 20, 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    // color: Colors.black,
                                    border: Border.all(color: Colors.black)),
                                child: Text(
                                  "Review",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: TextSize.small,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
