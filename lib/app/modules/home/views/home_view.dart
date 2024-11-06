import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/category/views/category_view.dart';
import 'package:d_and_s/app/modules/favourites/controllers/favourites_controller.dart';
import 'package:d_and_s/app/modules/home/views/home_category_view.dart';
import 'package:d_and_s/app/modules/reusable_widgets/app_bar_mainpage.dart';
import 'package:d_and_s/app/modules/reusable_widgets/CarouselSliderReusable.dart';
import 'package:d_and_s/app/modules/search_view/controllers/search_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import '../../category/controllers/category_controller.dart';
import '../controllers/home_controller.dart';
import 'home_section_tabBar/home_section_tabBar.dart';
import 'home_section_tabBar/home_section_tabBar_tabs.dart';

// ignore: must_be_immutable
class HomeView extends GetView<HomeController> {
  List<int> list = [1, 2, 3, 4, 5];
  final searchController = TextEditingController();
  var index = 0.obs;
  final controllerSearch = Get.put(SearchViewController());
  final homeViewController = Get.put(HomeController());
  final categoryController = Get.put(CategoryController());

  final List<String> imgList = [
    'assets/images/slide1.jpg',
    'assets/images/slide2.webp',
    'assets/images/slide3.jpeg',
  ];

  final controllerAddToCart = Get.put(AddToCartController());
  final controllerFavorite = Get.put(FavouritesController());
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      // final controller = Get.put(HomeController());
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(131),
          child: Column(
            children: [
              AppBarMainPage(
                title: 'D&S Fashion',
                isLeading: true,
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          // color: Colors.white,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        //   child: GestureDetector(
                        //     onTap: () {
                        //       controllerSearch.searchResult.value = [];
                        //       Get.to(SearchViewView());
                        //     },
                        //     child: AbsorbPointer(
                        //       child: TextField(
                        //         controller: searchController,
                        //         decoration: InputDecoration(
                        //           hintText: "What are you looking for?",
                        //           prefixIcon: const Icon(Icons.search),
                        //           suffixIcon: GestureDetector(
                        //               onTap: () {
                        //                 // Get.to(FilterView());
                        //                 showModalBottomSheet(
                        //                     // shape: const RoundedRectangleBorder(
                        //                     //   borderRadius: BorderRadius.vertical(
                        //                     //     top: Radius.circular(20),
                        //                     //   ),
                        //                     // ),
                        //                     context: context,
                        //                     builder: (BuildContext context) =>
                        //                         FilterView());
                        //               },
                        //               child: const Icon(Icons.filter_list)),
                        //           enabledBorder: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(6),
                        //             borderSide: const BorderSide(
                        //               width:
                        //                   0, // Border width when the TextField is enabled but not focused
                        //               color: Colors
                        //                   .black, // Border color when enabled
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),

                        // const SizedBox(height: 20),
                        CarouselSliderReusable(imgList: imgList),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.category_outlined,
                                color: AppColors.textColorGrey,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "Categories",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.titleColorGrey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Get.to(CategoryView());
                                },
                                child: Text(
                                  "View All",
                                  style: TextStyle(
                                      fontSize: TextSize.small,
                                      color: AppColors.textColorGrey,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: HomeCategoryView(),
                        ),
                        // SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                SliverAppBar(
                  scrolledUnderElevation: 0,
                  backgroundColor:
                      innerBoxIsScrolled ? Colors.white : Colors.white,
                  title: HomeSectionTabBar(),
                  floating: false,
                  pinned: true, // Keeps app bar visible on scroll
                  snap: false,
                  elevation: 0, // Prevents shadow effect
                  expandedHeight: 0, // Disable collapsing behavior
                  toolbarHeight:
                      40, // Removes the toolbar height to remove extra space
                  forceElevated:
                      innerBoxIsScrolled, // Forces elevation when scrolled
                ),
              ];
            },
            body: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: HomeSectionTabBarTabs(),
            ),
          ),
        ),
      ),
    );
  }
}
