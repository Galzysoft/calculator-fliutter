import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({
    Key? key, required this.buttonTextstyle, required this.buttonBackgroundColor,  this.buttonRadius, required this.buttonOnClick, required this.buttonText,
  }) : super(key: key);
final TextStyle buttonTextstyle;
  final String buttonText;
final Color buttonBackgroundColor;
final BorderRadius ? buttonRadius;
final VoidCallback buttonOnClick;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,margin: EdgeInsets.all(1),
      width: 80,
      decoration: BoxDecoration(

          color: buttonBackgroundColor,
          borderRadius:buttonRadius),
      child: TextButton(
          onPressed: buttonOnClick,
          child: Text(
            buttonText,
            style: buttonTextstyle,
          )),
    );
  }
}