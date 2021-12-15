// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(ThisApp());

class ThisApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF6d418a),
        appBar: AppBar(
          title: Text('Magic Ball'),
          backgroundColor: Color(0xFF67159C),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ball = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('assets/images/magicball/ball$ball.png'),
        onPressed: () {
          setState(() {
            ball = Random().nextInt(9) + 1;
          });
        },
      ),
    );
  }
}
