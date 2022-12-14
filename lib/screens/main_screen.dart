import 'package:flutter/material.dart';
import 'package:flutter_1/components/job_carousel.dart';
import 'package:flutter_1/classes/job.dart';
import 'package:flutter_1/classes/company.dart';

// create main screen
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[_customAppBar(), _textsHeader(context)],
        ),
      ),
    );
  }

  Widget _customAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            iconSize: 30,
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          Row(children: <Widget>[
            IconButton(
              iconSize: 30,
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 30,
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ]),
        ],
      ),
    );
  }

  Widget _textsHeader(context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Text(
          'Hi Eduardo!',
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          'Find your next job',
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(""),
        Text("For you", style: TextStyle(fontSize: 20, color: Colors.black54)),
        Text(""),
        JobCarousel(
          title: "For You",
        ),
        Text(""),
        Text("Work from anywhere",
            style: TextStyle(fontSize: 20, color: Colors.black54)),
        Text(""),
        JobCarousel(
          title: "New Zealand",
        ),
        Text(""),
        Text("US Jobs", style: TextStyle(fontSize: 20, color: Colors.black54)),
        Text(""),
        JobCarousel(
          title: "3",
        ),
      ]),
    );
  }
}
