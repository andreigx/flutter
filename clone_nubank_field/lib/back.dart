import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BackCard extends StatefulWidget {
  @override
  _BackCardState createState() => _BackCardState();
}

class _BackCardState extends State<BackCard> {
  TextEditingController cardNumberController = TextEditingController();
  String cardNumber;

  Widget layoutBackCard() {
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
          top: 16,
          child: Container(
              height: 90, width: double.maxFinite, color: Colors.grey)),
      Positioned(
        top: 160,
        left: 24,
        child: Text(
          //'1234 4568 9123 6465',
          '${cardNumber??''}',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
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
    ]);
  }

  Widget customizedCounter(
    BuildContext context, {
    int currentLength,
    int maxLength,
    bool isFocused,
  }) {
    return Text(
      '$currentLength/$maxLength',
      semanticsLabel: 'character count',
      style: TextStyle(color: Colors.white),
    );
  }

  String formataNumeroCartao(String numeroCartao){
    var numeroLimpo = numeroCartao?.replaceAll(RegExp('[^0-9]'), '')?.trim() ?? '';
    String numeroFormatado = '';
    int contador = 0;

    for (var i in numeroLimpo.split('')) {
      numeroFormatado += i.toString();
      contador++;

      if (contador == 4 ){
        if (numeroFormatado.length >= 16) {
          break;
        } else {
          numeroFormatado += ' ';
          contador = 0;
        }
      }
    }

    return numeroFormatado;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    //nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Center(
            child: layoutBackCard(),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            cursorColor: Colors.white,
            decoration: InputDecoration(
              labelText: 'Número no Cartão',
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
              ),
              helperText: 'Apenas Números',
              helperStyle: TextStyle(color: Colors.white),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1),
              ),
            ),
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.number,
            maxLength: 16,
            buildCounter: customizedCounter,
            autocorrect: false,
            //controller: cardNumberController,
            inputFormatters: [
              WhitelistingTextInputFormatter(RegExp('[0-9]')),
            ],
            onChanged: (valor) {
              setState(() {
                cardNumber = formataNumeroCartao(valor);
              });
            },
          ),
          SizedBox(height: 10,),
          RaisedButton(
            child: Text(
              'SALVAR'
            ),
            textColor: Color.fromRGBO(109, 33, 119, 1),
            onPressed: (){
              setState(() {
                cardNumber = formataNumeroCartao(cardNumberController.text);
              });
            }
          )
        ],
      ),
    );
  }
}
