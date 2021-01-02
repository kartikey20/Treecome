import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class InvitedSpeakers extends StatelessWidget {
  Axis direction;
  bool autoPlay, infiniteScroll;

  InvitedSpeakers(this.direction,this.autoPlay,this.infiniteScroll);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [],
      options: CarouselOptions(
        height: 400,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: infiniteScroll,
        reverse: false,
        autoPlay: autoPlay,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        scrollDirection: direction,
      ),
    );
  }
}
