import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 1000),
        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
        //enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return buildImage('assets/images/${index + 1}.jpg');
      },
      itemCount: 9,
    );
  }
}

Widget buildImage(String url) => Container(
      margin: EdgeInsets.symmetric(horizontal: 0.5),
      color: Colors.grey,
      child: Image(
        image: AssetImage(url),
        fit: BoxFit.cover,
      ),
    );
