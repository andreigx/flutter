import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _numero = 1;
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('My First Flutter App'),
      ),

      drawer: Drawer(
        child: ListView( 
          padding: EdgeInsets.zero,
          children: <Widget>[

            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ), 
              child: Text(
                'Teste do Andrei',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),

          ],
        ),
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

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _numero++;
          });
        },
        child: Icon(Icons.add_circle_outline),
        backgroundColor: Colors.cyan,
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.class_),
            title: Text('Class'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan,
        onTap: _onItemTapped,
      ),

    );
  }
}
