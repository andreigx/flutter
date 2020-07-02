import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: <Widget>[
          Container(
            height: 30,
            margin: EdgeInsets.fromLTRB(50, 130, 50, 10),
            child: Align(
              child: Text('Login to Continue!', style: TextStyle(fontSize: 26, color: Colors.black38, fontWeight: FontWeight.w500),),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.account_circle, color: Colors.red[200],),
                  ),
                  Text('Username', style: TextStyle(fontSize: 20, color: Colors.black38, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),)
                ],
              )
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.vpn_key, color: Colors.red[200],),
                  ),
                  Text('Password', style: TextStyle(fontSize: 20, color: Colors.black38, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),)
                ],
              )
            ),
          ),
          Container(
            height: 30,
            margin: EdgeInsets.fromLTRB(50, 5, 50, 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Align(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.check_box, color: Colors.white70,),
                    Text('Remember me',
                      style: TextStyle(fontSize: 16, color: Colors.black38, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(colors: [Colors.red[200], Colors.orange]),
            ),
            child: Align(
              child: Text(
                'LOGIN',
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
            )
          ),
        ],
      )
    );
  }
}