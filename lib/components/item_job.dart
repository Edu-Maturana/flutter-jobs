import 'package:flutter/material.dart';
import 'package:flutter_1/classes/job.dart';

class ItemJob extends StatelessWidget {
  // receive job data
  Job? job;
  ItemJob({this.job});

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
                image: NetworkImage(job?.company?.urlLogo ?? ''),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(job?.company?.name ?? '',
                  style: TextStyle(color: Colors.black54)),
              Text(job?.role ?? '',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54)),
              Row(children: [
                Icon(Icons.location_on, color: Colors.black54),
                Text(job?.location ?? '',
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
