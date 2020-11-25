import 'package:flash_chat/screens/login_screen.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({this.buttonColor, this.buttonText, this.pageName, this.heroTag});

  Color buttonColor;
  String buttonText;
  String pageName, heroTag;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          elevation: 5.0,
          color: buttonColor,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, pageName);
              //Go to login screen.
            },
            minWidth: 200.0,
            height: 42.0,
            child: Text(
              buttonText,
            ),
          ),
        ),
      ),
    );
  }
}
