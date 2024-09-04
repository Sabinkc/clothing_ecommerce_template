import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/home/views/home_grid_view.dart';
import 'package:d_and_s/app/modules/home/views/home_tabBar/home_tabBar.dart';
import 'package:d_and_s/app/modules/home/views/home_static_container.dart';
import 'package:d_and_s/app/modules/reusable_widgets/AppBarMainPage.dart';
import 'package:d_and_s/app/modules/reusable_widgets/CarouselSliderReusable.dart';
import 'package:d_and_s/app/modules/reusable_widgets/TextFormFieldReusable.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  List<int> list = [1, 2, 3, 4, 5];
  final search = TextEditingController();

  final List<String> imgList = [
    'https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  final List<String> tabLabels = [
    "Home",
    "Settings",
    "Profile",
    "About",
    "Contact",
    "Home",
    "Settings",
    "Profile",
    "About",
    "Contact"
  ];

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarMainPage(
            title: 'Hi Aman',
            isLeading: true,
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: SingleChildScrollView(
              child: Column(children: [
                TextFormFieldReusable(
                    hint: "What are you looking for ?",
                    icon: Icon(Icons.search),
                    textEditingController: search),
                SizedBox(height: 10),
                CarouselSliderReusable(imgList: imgList),

                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(
                      Icons.category_outlined,
                      color: Colors.red,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Categories",
                      style: TextStyle(
                          fontSize: TextSize.normal,
                          fontWeight: FontWeight.w100),
                    )
                  ],
                ),
                SizedBox(height: 10),
                HomeGridView(),

                SizedBox(height: 10),
                // HomeStaticContainer(),
                SizedBox(height: 15),
                Container(height: 500,child: HomeTabBar())

              ]),
            ),
          ),
        ),
      ),
    );
  }
}
