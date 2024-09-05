import 'package:flutter/material.dart';

class HomeGridView extends StatelessWidget {
  final List categories = [
    "Watches",
    "Shirts",
    "Bags",
    "Clothing",
    "Accessories Accessories",
    "Shoes",
    "Socks",
    "More",
  ];
  final List<IconData> categoriesIcons = [
    Icons.home,
    Icons.favorite,
    Icons.settings,
    Icons.star,
    Icons.person,
    Icons.camera,
    Icons.phone,
    Icons.map,
  ];

  HomeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // border: Border.all(color: AppColors.silverBorder,width: 4),
          color: Colors.white,
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black,
          //     blurRadius: 2.0,
          //     spreadRadius: 0.0,
          //     offset: Offset(
          //         2.0, 2.0), // shadow direction: bottom right
          //   )
          // ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              // crossAxisSpacing: 8.0,  // Add spacing between grid items
              // mainAxisSpacing: 8.0,    // Add spacing between grid items
              // childAspectRatio: 1.0,
            ),
            itemBuilder: (BuildContext context, index) => Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(categoriesIcons[index],color: Colors.grey,),
                  SizedBox(height: 10),
                  Text(
                    categories[index],
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
