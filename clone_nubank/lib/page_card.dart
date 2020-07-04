import 'package:clone_nubank/front.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'back.dart';

class CardNubank extends StatefulWidget {
  @override
  _CardNubankState createState() => _CardNubankState();
}

class _CardNubankState extends State<CardNubank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clone Nubank'),
        backgroundColor: Color.fromRGBO(109, 33, 119, 1),
      ),
      backgroundColor: Color.fromRGBO(153, 51, 153, 0.5),
      body: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        front: Padding(
          padding: EdgeInsets.all(16),
          child: FrontCard(),
        ),
        back: Padding(
         padding: EdgeInsets.all(16),
          child: BackCard(),
        ),
      ),
    );
  }
}

