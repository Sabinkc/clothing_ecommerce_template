import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/controllers/home_controller.dart';

class CustomClickableContainer extends StatelessWidget {
  final controller = Get.put(HomeController());
  // var currentIndex = 0.obs;
  final List<String> imgList = [
    'https://omnitail.net/wp-content/uploads/2021/06/amazon-clothes-sm.png',
    'https://plus.unsplash.com/premium_photo-1664202526475-8f43ee70166d?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1504198458649-3128b932f49e?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1506629082955-511b1aa562c8?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1618898909019-010e4e234c55?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1561909848-977d0617f275?q=80&w=2380&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];
  // final String img;
  final Map coloredImgUrl;
  CustomClickableContainer({
    super.key, required this.coloredImgUrl,
  });

  @override
  Widget build(BuildContext context) {
    var count = controller.detailViewProductCustomClickableContainer;
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Main Image Container
          Container(
            height: 300,
            margin: EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              image: DecorationImage(
                image: NetworkImage(
                  imgList[count.value],
                ),
                fit: BoxFit.cover,
              ),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.5),
              //     spreadRadius: 3,
              //     blurRadius: 7,
              //     offset: Offset(0, 3), // changes position of shadow
              //   ),
              // ],
            ),
          ),
          SizedBox(height: 20),

          // Horizontal Image Scroller
          Container(
            height: 80,
            margin: EdgeInsets.symmetric(horizontal: 0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imgList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    count.value = index;
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color:
                              count.value == index ? Colors.blue : Colors.white,
                          width: 2),
                      image: DecorationImage(
                        image: NetworkImage(imgList[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
