// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';
import './text_control.dart';
import './text.dart';

void main() => runApp(ass());

class ass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _assState();
  }
}

class _assState extends State<ass> {
  var words = [
    'hello there',
    'where are you',
    'be there now',
    'bye byeee',
    'dasdasdasd',
    'dreggsfsdsdf',
  ];
  var questionIndex = 0;
  void changeText() {
    Random rnd;
    int min = 0;
    int max = 6;
    rnd = new Random();
    int r = min + rnd.nextInt(max - min);
    setState(() {
      questionIndex = r;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: Column(children: [
          Control(changeText, 'Changer'),
          Tex(words[questionIndex])
        ]),
      ),
    );
  }
}
