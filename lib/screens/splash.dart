import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding top
        padding: EdgeInsets.only(top: 150),
        width: double.infinity,
        color: Colors.white,
        child: Column(children: <Widget>[
          Image.asset('assets/img/logo.png'),
          Text('Find a job', style: Theme.of(context).textTheme.headline1),
          Text('in an easy way', style: Theme.of(context).textTheme.headline2),
          Text(''),
          MaterialButton(
            color: Color(0xFF6C63FF),
            height: 50,
            child: Text('Get Started',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}
