import 'package:d_and_s/app/constants/colors.dart';

import 'package:d_and_s/app/modules/home/views/home_section_tabBar/home_section_tabBar_tabs.dart';

import 'package:flutter/material.dart';

class FilterViewSortBy extends StatelessWidget {
  final String title;
  const FilterViewSortBy({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightSilver,
      appBar: AppBar(
        title: Text(title),
        centerTitle: false,
        backgroundColor: AppColors.lightSilver,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: HomeSectionTabBarTabs(),
        ),
      ),
    );
  }
}
