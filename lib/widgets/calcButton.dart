import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({
    Key? key,
    required this.buttonTextstyle,
    required this.buttonBackgroundColor,
    this.buttonRadius,
    required this.buttonOnClick,
    required this.buttonText, this.isOperatorClicked,
  }) : super(key: key);
  final TextStyle buttonTextstyle;
  final String buttonText;
  final Color buttonBackgroundColor;
  final BorderRadius? buttonRadius;
  final VoidCallback buttonOnClick;
  final bool ?isOperatorClicked;
  /*
  ==  is same as  equal to  in comparison,
  !=   is same as  not equal to  in comparison,
    <=   is same as  less than or equal to  in comparison,
     >=   is same as  greater than or equal to  in comparison,
       >   is same as  greater than   in comparison,
        <   is same as  less than  in comparison,
       (a<b)   && (a>=45)  is same as  greater than or equal to  in comparison,
  *
  *
  *
  *  */
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isOperatorClicked == true ? true : false,
      child: Container(
        height:double.infinity,
        margin: EdgeInsets.all(1),
        width: 80,
        decoration: BoxDecoration(
            color: buttonBackgroundColor, borderRadius: buttonRadius),
        child: TextButton(
            onPressed: buttonOnClick,
            child: Text(
              buttonText,
              style: buttonTextstyle,
            )),
      ),
    );
  }
}
