import 'package:flutter/material.dart';

class BackCard extends StatefulWidget {
  @override
  _BackCardState createState() => _BackCardState();
}

class _BackCardState extends State<BackCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[ 
          Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(109, 33, 119, 1),
            ),
          ),
          Positioned(
            top:16,
            child: Container(
              height: 90,
              width: double.maxFinite,
              color: Colors.grey
            )
          ),
          Positioned(
            top: 160,
            left: 24,
            child: Text('1234 4568 9123 6465', style: TextStyle(color: Colors.white, fontSize: 16),),
          ),
          Positioned(
            top: 130,
            right: 16,
            child: Image.asset(
              'assets/cirrus.png',
              width: 100,
              height: 80,
            ),
          ),
        ]
      ),
    );
  }
}