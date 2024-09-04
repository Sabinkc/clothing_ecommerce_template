import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderReusable extends StatelessWidget {
  final List<String> imgList;
   CarouselSliderReusable({super.key, required this.imgList});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: CarouselSlider(

        options: CarouselOptions(),
        items: imgList
            .map((item) => Container(
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image: NetworkImage(item))),
                        child: Image.network(item,
              fit: BoxFit.fill, width: double.infinity,height: double.infinity,),
                      ))
            .toList(),
      ),
    );
  }
}
