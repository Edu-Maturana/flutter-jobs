import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_1/components/item_job.dart';

class JobCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 150,
          reverse: false,
          viewportFraction: 0.86,
          enableInfiniteScroll: false),
      items: <Widget>[
        ItemJob(),
        ItemJob(),
        ItemJob(),
      ],
    );
  }
}
