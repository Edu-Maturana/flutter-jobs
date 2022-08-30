import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class JobCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 230,
          reverse: false,
          viewportFraction: 0.86,
          enableInfiniteScroll: false),
      items: <Widget>[
        Container(
          color: Colors.red,
          margin: EdgeInsets.all(3.0),
        ),
        Container(
          color: Colors.blue,
          margin: EdgeInsets.all(3.0),
        ),
        Container(
          color: Colors.green,
          margin: EdgeInsets.all(3.0),
        ),
      ],
    );
  }
}
