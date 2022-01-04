import 'package:flutter/material.dart';

class Tex extends StatelessWidget {
  final String list;
  Tex(this.list);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: (Text(
      list,
      style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    )));
  }
}
