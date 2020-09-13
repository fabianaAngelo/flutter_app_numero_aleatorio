import 'dart:math';
import 'package:flutter/material.dart';

class NumeroAleatorio extends StatefulWidget {
  @override
  _NumeroAleatorioState createState() => _NumeroAleatorioState();
}

class _NumeroAleatorioState extends State<NumeroAleatorio> {
  int _numero = 0;

  void _gerarNumero() {
    setState(() {
      Random numeroAleatorio = new Random();
      _numero = numeroAleatorio.nextInt(1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '$_numero',
            style: TextStyle(fontSize: 28, backgroundColor: Colors.green),
          ),
          SizedBox(height: 30),
          RaisedButton(textColor: Colors.green,
              onPressed: _gerarNumero, child: Text("Gerar número"))
        ],
      ),
    );
  }
}
