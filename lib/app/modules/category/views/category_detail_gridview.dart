import 'package:d_and_s/app/constants/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../constants/text_size.dart';
import '../../../data/alldata.dart';
import '../../favourites/controllers/favourites_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../../home/views/home_section_tabBar/home_section_tabBar_tabs_bottomSheet.dart';
import '../../product_detail/controllers/product_detail_controller.dart';
import '../../product_detail/views/product_detail_view.dart';
import '../../reusable_widgets/tags.dart';
import '../controllers/category_controller.dart';

class CategoryDetailGridView extends StatelessWidget {
  final controller = Get.put(HomeController());
  final controllerProduct = Get.put(ProductDetailController());
  final controllerFavorites = Get.put(FavouritesController());
  final controllerCategory = Get.put(CategoryController());
  CategoryDetailGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        // Get the selected tab's products list
        List selectedProducts = products
            .where((element) =>
                element["sub_category_id"] ==
                controllerCategory.subCategory.value)
            .toList();

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: selectedProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.65,
          ),
          itemBuilder: (BuildContext context, index) {
            Map product = selectedProducts[index];
            Map colorMap = product["color"] ?? {};
            List imageUrls = colorMap.isNotEmpty
                ? colorMap.entries.first.value
                : [
                    'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
                  ]; // Gets the list of images for the first color
            String imageUrl = imageUrls[0];
            // imageUrls.isNotEmpty
            // ? imageUrls[0]
            // : 'https://static-00.iconduck.com/assets.00/no-image-icon-512x512-lfoanl0w.png'; // First image URL of the first color
            return GestureDetector(
              onTap: () {
                controllerProduct.selectedColorName.value = '';
                // var productColors = (product["color"] as List<dynamic>)
                //     .map((e) => e as int)
                //     .toList();
                // var reviews = product["reviews"];
                // var firstReview =
                //     reviews.isNotEmpty ? reviews[0] : null;
                Map imageStore = product["color"] ?? {};
                Map images = imageStore.isNotEmpty
                    ? product["color"]
                    : {
                        0x00000000: [
                          'https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg'
                        ],
                      };
                List test = images.entries.first.value;
                controllerProduct.selectedImages.assignAll(test);
                Get.to(
                  ProductDetailView(
                      // title: product["title"] ?? "NO TITLE",
                      // description:
                      //     product["description"] ?? "NO DESCRIPTION",
                      // productColors: productColors,

                      data: product
                      // attributesdata: products,
                      // product["color"],
                      // productColors: productColors,
                      ),
                );
              },
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      // border: Border.all(color: AppColors.silverBorder, width: 5),
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        imageUrl), // Replace with actual image URL
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                height: Adaptive.h(25),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: GestureDetector(
                                  onTap: () {
                                    controllerFavorites.searchProductId(
                                        product["product_id"], product);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.lightSilver,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Obx(
                                        () => Icon(
                                          controllerFavorites.isFavorite(
                                                  product["product_id"])
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: Colors.black.withOpacity(0.7),
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 20),
                            child: Text(
                              product["name"] ?? "",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: TextSize.small,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Text(
                                  "Rs.${product["price"] ?? ""}",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  "${product["realprice"]}",
                                  style: const TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    decorationThickness: 2,
                                    decorationColor: Colors.grey,
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Spacer(),

                                // Positioned(
                                //   right: 0,
                                //   top: 40,
                                //   child:
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return HomeSectionTabBarTabsBottomSheet(
                                          homeSectionTabsData: product,
                                          homeSectionTabsImg: imageUrl,
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.lightSilver,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Icon(
                                        Icons.shopping_cart_outlined,
                                        size: 20,
                                        color: Colors.black.withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                ),

                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tags(tagTitle: "${product["discount"]}%"),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
