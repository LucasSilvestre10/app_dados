import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  @override
  _DadoosState createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int numeroDadoEsquerda = 1;
  int numeroDadoDireita = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  numeroDadoEsquerda = Random().nextInt(6) + 1;
                  print(numeroDadoEsquerda);
                });
              },
              child: Image.asset('assets/dado$numeroDadoEsquerda.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  numeroDadoDireita = Random().nextInt(6) + 1;
                  print(numeroDadoDireita);
                });
              },
              child: Image.asset('assets/dado$numeroDadoDireita.png'),
            ),
          ),
        ],
      ),
    );
  }
}
