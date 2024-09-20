import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderReusable extends StatelessWidget {
  final List<String> imgList;
  CarouselSliderReusable({super.key, required this.imgList});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: CarouselSlider(
        options: CarouselOptions(
            autoPlay: true,
            enlargeStrategy: CenterPageEnlargeStrategy.zoom,
            enlargeCenterPage: true,
            aspectRatio: 2),
        items: imgList
            .map((item) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image: NetworkImage(item))),
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
