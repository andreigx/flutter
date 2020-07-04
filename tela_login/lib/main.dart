import 'package:flutter/material.dart';
import 'loginApp.dart';
//import 'teste.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: LoginApp(),
    );
  }
}