import 'package:flutter/material.dart';

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
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hi Eduardo!',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              'Find your next job',
              style: Theme.of(context).textTheme.headline4,
            ),
          ]),
    );
  }
}
