import 'package:flutter/material.dart';

class ItemJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(1, 1),
          ),
          // border radiu
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/img/apple.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('Apple', style: TextStyle(color: Colors.black54)),
              Text('Software Engineer',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54)),
              Row(children: [
                Icon(Icons.location_on, color: Colors.black54),
                Text('San Francisco, CA',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black54)),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
