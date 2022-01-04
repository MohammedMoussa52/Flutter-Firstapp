import 'package:flutter/material.dart';

class Control extends StatelessWidget {
  final VoidCallback selectHandler;
  final String buttonText;

  Control(this.selectHandler, this.buttonText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.cyanAccent,
            onPrimary: Colors.black,
          ),
          child: Text(buttonText),
          onPressed: selectHandler,
        ));
  }
}
