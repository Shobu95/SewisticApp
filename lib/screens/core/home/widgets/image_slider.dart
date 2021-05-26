import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImagesSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.asset('assets/images/cover1.jpg'),
      ],
      options: CarouselOptions(
        autoPlay: true,
        height: 120,
        enlargeCenterPage: true,
        autoPlayInterval: Duration(seconds: 3),
      ),
    );
  }
}
