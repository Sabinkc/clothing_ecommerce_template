// ignore_for_file: must_be_immutable

import 'package:d_and_s/app/constants/colors.dart';
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
              color: AppColors.bottomNavBg,
            ),

            // color: AppColors.lightBlue,
            height: Adaptive.h(6),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      controllerBottomNav.count.value = 0;
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 4,
                          width: 60,
                          color: controllerBottomNav.count.value == 0
                              ? AppColors.primaryColor
                              : AppColors.appbarBg,
                        ),
                        // SizedBox(height: 5),
                        Expanded(
                          child: Icon(Icons.home,
                              color: controllerBottomNav.count.value == 0
                                  ? AppColors.primaryColor
                                  : Colors.white),
                        ),
                        Expanded(
                          child: Text(
                            "Home",
                            style: TextStyle(
                                color: controllerBottomNav.count.value == 0
                                    ? AppColors.primaryColor
                                    : Colors.white),
                          ),
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
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 4,
                          width: 60,
                          color: controllerBottomNav.count.value == 1
                              ? AppColors.primaryColor
                              : AppColors.appbarBg,
                        ),
                        Expanded(
                          child: Icon(Icons.category,
                              color: controllerBottomNav.count.value == 1
                                  ? AppColors.primaryColor
                                  : Colors.white),
                        ),
                        Expanded(
                          child: Text(
                            "Category",
                            style: TextStyle(
                                color: controllerBottomNav.count.value == 1
                                    ? AppColors.primaryColor
                                    : Colors.white),
                          ),
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
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 4,
                          width: 60,
                          color: controllerBottomNav.count.value == 2
                              ? AppColors.primaryColor
                              : AppColors.appbarBg,
                        ),
                        Expanded(
                          child: Icon(Icons.shop,
                              color: controllerBottomNav.count.value == 2
                                  ? AppColors.primaryColor
                                  : Colors.white),
                        ),
                        Expanded(
                          child: Text(
                            "Shop",
                            style: TextStyle(
                                color: controllerBottomNav.count.value == 2
                                    ? AppColors.primaryColor
                                    : Colors.white),
                          ),
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
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 4,
                          width: 60,
                          color: controllerBottomNav.count.value == 3
                              ? AppColors.primaryColor
                              : AppColors.appbarBg,
                        ),
                        Expanded(
                          child: Icon(Icons.shopping_cart,
                              color: controllerBottomNav.count.value == 3
                                  ? AppColors.primaryColor
                                  : Colors.white),
                        ),
                        Expanded(
                          child: Text(
                            "Cart",
                            style: TextStyle(
                                color: controllerBottomNav.count.value == 3
                                    ? AppColors.primaryColor
                                    : Colors.white),
                          ),
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
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 4,
                          width: 60,
                          color: controllerBottomNav.count.value == 4
                              ? AppColors.primaryColor
                              : AppColors.appbarBg,
                        ),
                        Expanded(
                          child: Icon(Icons.person,
                              color: controllerBottomNav.count.value == 4
                                  ? AppColors.primaryColor
                                  : Colors.white),
                        ),
                        Expanded(
                          child: Text(
                            "Me",
                            style: TextStyle(
                                color: controllerBottomNav.count.value == 4
                                    ? AppColors.primaryColor
                                    : Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
