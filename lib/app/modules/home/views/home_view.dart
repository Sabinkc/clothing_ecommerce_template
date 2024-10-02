import 'package:d_and_s/app/constants/colors.dart';
import 'package:d_and_s/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:d_and_s/app/modules/favourites/controllers/favourites_controller.dart';
import 'package:d_and_s/app/modules/home/views/home_category_view.dart';

import 'package:d_and_s/app/modules/reusable_widgets/app_bar_mainpage.dart';
import 'package:d_and_s/app/modules/reusable_widgets/CarouselSliderReusable.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../reusable_widgets/filter_view/filter_view.dart';
import '../controllers/home_controller.dart';
import 'home_section_tabBar/home_section_tabBar.dart';
import 'home_section_tabBar/home_section_tabBar_tabs.dart';

// ignore: must_be_immutable
class HomeView extends GetView<HomeController> {
  List<int> list = [1, 2, 3, 4, 5];
  final search = TextEditingController();
  var index = 0.obs;
  var searchQuery = ''.obs;
  final homeViewController = Get.put(HomeController());

  final List<String> imgList = [
    // 'https://i.ytimg.com/vi/V4K5yuPEDRM/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBHQaEbs51ZMV3juYqbYxy7KdcNUw',
    // 'https://media.gq-magazine.co.uk/photos/651ea0cb82e72cdf38c1655f/master/pass/jackets.jpg',
    'https://d-s-two.vercel.app/images/slide2.jpg',
    'https://www.realmenrealstyle.com/wp-content/uploads/2023/08/How-To-Fold-A-Pocket-Square-9-Different-Ways.jpg',
    // 'https://lscoecomm.scene7.com/is/image/lscoecomm/24_SEP_SELVEDGE_16_6?fmt=webp&qlt=70&resMode=sharp2&fit=crop,1&op_usm=0.6,0.6,8&wid=4000',
    // 'https://globalboutique.com/wp-content/uploads/2023/02/featured-colourful-rolex-oysters.jpg',
    // 'https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png',
    // 'https://sneakernews.com/wp-content/uploads/2022/10/Nike-Air-Force-1-Color-Of-The-Month-FD7039-600-8.jpg',
    // 'https://cdn2.reikojeans.com/34583-large_default_mobile/flare-trouser-grace-color-red-clay.jpg',
    // 'https://www.bobswatches.com/rolex-blog/wp-content/uploads/2016/06/20JM3136-Edit-3-1.jpg',
    'https://images.unsplash.com/photo-1679487042326-d1b7aae83256?q=80&w=3538&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
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
  final controllerAddToCart = Get.put(AddToCartController());
  final controllerFavorite = Get.put(FavouritesController());
  HomeView({Key? key}) : super(key: key);
  List<String> filteredList(List<String> originalList) {
    if (searchQuery.isEmpty) {
      return originalList;
    } else {
      return originalList
          .where(
              (item) => item.toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
        // final controller = Get.put(HomeController());
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBarMainPage(
              title: 'Hi Aman',
              isLeading: true,
            ),
          ),
          body: Container(
            color: AppColors.lightSilver,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextFormField(
                              onChanged: (value) {
                                searchQuery.value =
                                    value; // Update search query in controller
                              },
                              controller: search,
                              decoration: InputDecoration(
                                hintText: "What are you looking for?",
                                prefixIcon: const Icon(Icons.search),
                                suffixIcon: GestureDetector(
                                    onTap: () {
                                      // Get.to(FilterView());
                                      showModalBottomSheet(
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(20),
                                            ),
                                          ),
                                          context: context,
                                          builder: (BuildContext context) =>
                                              FilterView());
                                    },
                                    child: const Icon(Icons.filter_list)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: const BorderSide(
                                      width: 1, color: AppColors.lightBlue),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.red),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: const BorderSide(
                                    width: 1,
                                    color: Color(0xffAEAEAE),
                                  ),

                                  // // labelText: 'Tap to show the keyboard',
                                ),
                              ),
                            ),
                            // TextFormFieldReusable(
                            //   hint: "What are you looking for?",
                            //   icon: const Icon(Icons.search),
                            //   suffixIcon: const Icon(Icons.filter_list),
                            //   textEditingController: search,
                            // ),
                          ),
                          const SizedBox(height: 20),
                          CarouselSliderReusable(imgList: imgList),
                          const SizedBox(height: 20),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.category_outlined,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Categories",
                                  style: TextStyle(
                                    fontFamily: 'Bai Jamjuree',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
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
                    backgroundColor: AppColors.lightSilver,
                    title: HomeSectionTabBar(),
                    floating: true,
                    pinned: true,
                  ),
                ];
              },
              body: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: HomeSectionTabBarTabs(),
              ),
            ),
          ),
        ),
      );
}
