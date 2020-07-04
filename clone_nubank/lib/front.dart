import 'package:flutter/material.dart';

class FrontCard extends StatefulWidget {
  @override
  _FrontCardState createState() => _FrontCardState();
}

class _FrontCardState extends State<FrontCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: <Widget>[
        Container(
          height: 220,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(109, 33, 119, 1),
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: Image.asset(
            'assets/mastercard.png',
            width: 100,
            height: 80,
          ),
        ),
        Positioned(
          top: 65,
          left: 15,
          child: Image.asset(
            'assets/chip.png',
            width: 85,
            height: 65,
          ),
        ),
        Positioned(
          top: 80,
          left: 95,
          child: Image.asset(
            'assets/nfc.png',
            width: 30,
            height: 30,
            color: Colors.grey[300],
          ),
        ),
        Positioned(
          top: 120,
          left: 15,
          child: Image.asset(
            'assets/nu_logo.png',
            width: 100,
            height: 100,
            color: Colors.grey[300],
          ),
        ),
        Positioned(
            top: 160,
            left: 110,
            child: Text(
              'ANDREI A. BRANDO',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
        ),
      ]),
    );
  }
}
