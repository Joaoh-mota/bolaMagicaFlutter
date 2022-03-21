import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Ball(),
        appBar: AppBar(
          title: Text("Pergunte-me qualquer coisa!"),
          backgroundColor: Colors.cyan.shade900,
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                rolarBola();
              },
              child: Image.asset('bola/ball$ballNum.png'),
            ),
          )
        ],
      )),
    );
  }

  void rolarBola() {
    setState(() {
      ballNum = Random().nextInt(6) + 1;
    });
  }
}
