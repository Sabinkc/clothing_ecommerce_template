// ignore_for_file: must_be_immutable

import 'package:d_and_s/app/modules/category/views/category_view.dart';
import 'package:d_and_s/app/modules/home/views/home_view.dart';
import 'package:d_and_s/app/modules/shop/views/shop_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../add_to_cart/views/added_cart.dart';
import '../../user_account/views/user_account_view.dart';
import '../controllers/bottom_navigation_controller.dart';

class BottomNavigationView extends GetView<BottomNavigationController> {
  final controllerBottomNav = Get.put(BottomNavigationController());
  List title = ["Home", "Category", "Shop", "Cart", "Me"];
  List icon = [
    Icons.home,
    Icons.category,
    Icons.shop,
    Icons.shopping_cart,
    Icons.person
  ];
  BottomNavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context),
      home: Scaffold(
        body: Obx(
          () => changeView(),
        ),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(20),
              //   topRight: Radius.circular(20),
              // ),
              // border: Border.all(color: Colors.grey),
              color: Colors.white,
            ),

            // color: AppColors.lightBlue,
            height: Adaptive.h(8.5),
            child: Obx(
              () => Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        controllerBottomNav.count.value = 0;
                      },
                      child: Column(
                        children: [
                          Icon(Icons.home,
                              color: controllerBottomNav.count.value == 0
                                  ? Colors.black
                                  : Colors.grey),
                          Text(
                            "Home",
                            style: TextStyle(
                                color: controllerBottomNav.count.value == 0
                                    ? Colors.black
                                    : Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 1),
                    GestureDetector(
                      onTap: () {
                        controllerBottomNav.count.value = 1;
                      },
                      child: Column(
                        children: [
                          Icon(Icons.category,
                              color: controllerBottomNav.count.value == 1
                                  ? Colors.black
                                  : Colors.grey),
                          Text(
                            "Category",
                            style: TextStyle(
                                color: controllerBottomNav.count.value == 1
                                    ? Colors.black
                                    : Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 1),
                    GestureDetector(
                      onTap: () {
                        controllerBottomNav.count.value = 2;
                      },
                      child: Column(
                        children: [
                          Icon(Icons.shop,
                              color: controllerBottomNav.count.value == 2
                                  ? Colors.black
                                  : Colors.grey),
                          Text(
                            "Shop",
                            style: TextStyle(
                                color: controllerBottomNav.count.value == 2
                                    ? Colors.black
                                    : Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 1),
                    GestureDetector(
                      onTap: () {
                        controllerBottomNav.count.value = 3;
                      },
                      child: Column(
                        children: [
                          Icon(Icons.shopping_cart,
                              color: controllerBottomNav.count.value == 3
                                  ? Colors.black
                                  : Colors.grey),
                          Text(
                            "Cart",
                            style: TextStyle(
                                color: controllerBottomNav.count.value == 3
                                    ? Colors.black
                                    : Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 1),
                    GestureDetector(
                      onTap: () {
                        controllerBottomNav.count.value = 4;
                      },
                      child: Column(
                        children: [
                          Icon(Icons.person,
                              color: controllerBottomNav.count.value == 4
                                  ? Colors.black
                                  : Colors.grey),
                          Text(
                            "Me",
                            style: TextStyle(
                                color: controllerBottomNav.count.value == 4
                                    ? Colors.black
                                    : Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
            // ListView.builder(
            //   physics: const NeverScrollableScrollPhysics(),
            //   scrollDirection: Axis.horizontal,
            //   shrinkWrap: true,
            //   itemCount: title.length,
            //   itemBuilder: (BuildContext context, index) => Container(
            //     margin: EdgeInsets.only(right: 40),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         Icon(icon[index]),
            //         Text(title[index]),
            //       ],
            //     ),
            //   ),
            // ),
            ),
      ),
    );
  }

  changeView() {
    if (controllerBottomNav.count.value == 0) {
      return HomeView();
    } else if (controllerBottomNav.count.value == 1) {
      return CategoryView();
    } else if (controllerBottomNav.count.value == 2) {
      return ShopView();
    } else if (controllerBottomNav.count.value == 3) {
      return AddedCart();
    } else {
      return const UserAccountView();
    }
  }
}
