import 'package:flutter/material.dart';

class FrontCard extends StatefulWidget {
  @override
  _FrontCardState createState() => _FrontCardState();
}

class _FrontCardState extends State<FrontCard> {
  TextEditingController nameController = TextEditingController();
  String name;

  _FrontCardState({
    this.name = '',
  });

  Widget layoutCard() {
    return Stack(children: <Widget>[
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
          width: double.maxFinite,
          child: Text(
            '$name',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          )),
    ]);
  }

  Widget customizedCounter(BuildContext context, {int currentLength,int maxLength,bool isFocused,}) {
    return Text(
      '$currentLength/$maxLength',
      semanticsLabel: 'character count',
      style: TextStyle(color: Colors.white),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        Center(
          child: layoutCard(),
        ),
        SizedBox(height: 10,),
        TextField(
          cursorColor: Colors.white,
          decoration: InputDecoration(
            labelText: 'Nome no Cartão',
            labelStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
            )
          ),
          style: TextStyle(color: Colors.white),
          maxLength: 15,
          buildCounter: customizedCounter,
          textCapitalization: TextCapitalization.characters,
          autocorrect: false,
          controller: nameController, 
          onChanged: (valor) {
            setState(() {
              name = valor.toUpperCase();
            });
          },
        ),
        SizedBox(height: 10,),
        RaisedButton(
          child: Text('SALVAR',),
          textColor: Color.fromRGBO(109, 33, 119, 1),
          onPressed: () {
            setState(() {
              name = nameController.text;
            });
          },
        )
      ]),
    );
  }
}
