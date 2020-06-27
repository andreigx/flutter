import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _numero = 1;

  void _duplica(){
    setState(() {
      _numero *= 2;
    });
  }
  void _setaInicial(){
    setState(() {
      _numero = 1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('My First Flutter App'),
      ),
      body: GestureDetector(
        child: Center(
          child: Text(
            'Calc: $_numero',
            style: TextStyle(
              fontSize: 28,
              color: Colors.cyan,
            ),
          ),
        ),
        onTap: _duplica,
        onLongPress: _setaInicial,
      ),
    );
  }
}
