import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'back.dart';
import 'front.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FlipCard(
          direction: FlipDirection.HORIZONTAL,
          front: FrontCard(),
          back: BackCard(),
        ),
      ),
    );
  }
}

