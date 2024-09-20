import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/views/home_grid_view.dart';
import '../../home/views/home_tabBar/home_custom_tab.dart';
import '../../home/views/home_tabBar/home_tabBar_tabs.dart';
import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
        centerTitle: false,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              // HomeGridView()
              HomeCustomTab(),
              SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        HomeTabBarTabs(),
                        HomeTabBarTabs(),
                        HomeTabBarTabs(),
                        HomeTabBarTabs(),
                        HomeTabBarTabs(),
                        HomeTabBarTabs(),
                        HomeTabBarTabs(),
                        HomeTabBarTabs(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
