import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function onPressed;
  final String buttonText;
  final Color buttonBackgroudColor;
  MyButton(
      {@required this.onPressed,
      @required this.buttonText,
      @required this.buttonBackgroudColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              primary: buttonBackgroudColor,
              padding: EdgeInsets.all(5),
            ),
            child: Text(buttonText, style: TextStyle(fontSize: 14))));
  }
}
