import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderReusable extends StatelessWidget {
  final List<String> imgList;
   CarouselSliderReusable({super.key, required this.imgList});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(),
        items: imgList
            .map((item) => Container(
          child: Center(
              child: Image.network(item,
                  fit: BoxFit.cover, width: 1000)),
        ))
            .toList(),
      ),
    );
  }
}
