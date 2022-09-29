import 'dart:ffi';

import 'package:calculator/widgets/calcButton.dart';
import 'package:calculator/widgets/display.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String answer = "0";
  String firstValue = "";
  String typedvalue = "";
  String operator = "";
  bool isCliked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Column(children: [
        Expanded(
          flex: 5,
          child: Display(
            value: answer,
            trypedvalue: typedvalue,
          ),
        ),
        // Text("my value is ${value}",style: TextStyle(fontSize: 38),),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {
                    setState(() {
                      answer = "0";
                      typedvalue = "";
                      operator = "";

                    });
                  },
                  buttonBackgroundColor: Colors.black87,
                  buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.green, fontSize: 34),
                  buttonText: 'C',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {
                    operatorClick("/");
                  },
                  isOperatorClicked: isCliked,
                  buttonBackgroundColor: Colors.black87,
                  // buttonRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.green, fontSize: 34),
                  buttonText: '/',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {
                    operatorClick("X");
                  },
                  isOperatorClicked: isCliked,
                  buttonBackgroundColor: Colors.black87,
                  // buttonRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.green, fontSize: 34),
                  buttonText: 'X',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {
                    setState(() {
                      typedvalue =
                          typedvalue.substring(0, typedvalue.length - 1);

                      });
                    calculate2();
                  },
                  buttonBackgroundColor: Colors.black87,
                  buttonRadius:
                      BorderRadius.only(topRight: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.green, fontSize: 34),
                  buttonText: 'DEL',
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {
                    numberclick("7");
                  },
                  buttonBackgroundColor: Colors.green,
                  // buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  buttonTextstyle:
                      TextStyle(color: Colors.black87, fontSize: 34),
                  buttonText: '7',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {
                    numberclick("8");
                  },
                  buttonBackgroundColor: Colors.green,
                  // buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  buttonTextstyle:
                      TextStyle(color: Colors.black87, fontSize: 34),
                  buttonText: '8',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {
                    numberclick("9");
                  },
                  buttonBackgroundColor: Colors.green,
                  // buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  buttonTextstyle:
                      TextStyle(color: Colors.black87, fontSize: 34),
                  buttonText: '9',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {
                    operatorClick("-");
                  },
                  isOperatorClicked: isCliked,
                  buttonBackgroundColor: Colors.black87,
                  // buttonRadius: BorderRadius.only(topRight: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.green, fontSize: 34),
                  buttonText: '-',
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {
                    numberclick("4");
                  },
                  buttonBackgroundColor: Colors.green,
                  // buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  buttonTextstyle:
                      TextStyle(color: Colors.black87, fontSize: 34),
                  buttonText: '4',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {
                    numberclick("5");
                  },
                  buttonBackgroundColor: Colors.green,
                  // buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  buttonTextstyle:
                      TextStyle(color: Colors.black87, fontSize: 34),
                  buttonText: '5',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {
                    numberclick("6");
                  },
                  buttonBackgroundColor: Colors.green,
                  // buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  buttonTextstyle:
                      TextStyle(color: Colors.black87, fontSize: 34),
                  buttonText: '6',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {
                    operatorClick("+");
                  },
                  isOperatorClicked: isCliked,
                  buttonBackgroundColor: Colors.black87,
                  // buttonRadius: BorderRadius.only(topRight: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.green, fontSize: 34),
                  buttonText: '+',
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: CalcButton(
                              buttonOnClick: () {
                                numberclick("1");
                              },
                              buttonBackgroundColor: Colors.green,
                              // buttonRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                              buttonTextstyle: TextStyle(
                                  color: Colors.black87, fontSize: 34),
                              buttonText: '1',
                            ),
                          ),
                          Expanded(
                            child: CalcButton(
                              buttonOnClick: () {
                                numberclick("2");
                              },
                              buttonBackgroundColor: Colors.green,
                              // buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                              buttonTextstyle: TextStyle(
                                  color: Colors.black87, fontSize: 34),
                              buttonText: '2',
                            ),
                          ),
                          Expanded(
                            child: CalcButton(
                              buttonOnClick: () {
                                numberclick("3");
                              },
                              buttonBackgroundColor: Colors.green,
                              // buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                              buttonTextstyle: TextStyle(
                                  color: Colors.black87, fontSize: 34),
                              buttonText: '3',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: CalcButton(
                              buttonOnClick: () {
                                operatorClick("%");
                              },
                              isOperatorClicked: isCliked,
                              buttonBackgroundColor: Colors.green,
                              buttonRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20)),
                              buttonTextstyle: TextStyle(
                                  color: Colors.black87, fontSize: 34),
                              buttonText: '%',
                            ),
                          ),
                          Expanded(
                            child: CalcButton(
                              buttonOnClick: () {
                                numberclick("0");
                              },
                              buttonBackgroundColor: Colors.green,
                              // buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                              buttonTextstyle: TextStyle(
                                  color: Colors.black87, fontSize: 34),
                              buttonText: '0',
                            ),
                          ),
                          Expanded(
                            child: CalcButton(
                              buttonOnClick: () {
                                if (!typedvalue.endsWith(".")) {
                                  numberclick(".");
                                } else {
                                  print("yolunhave clicked  dot before");
                                }
                              },
                              buttonBackgroundColor: Colors.green,
                              // buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                              buttonTextstyle: TextStyle(
                                  color: Colors.black87, fontSize: 34),
                              buttonText: '.',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: CalcButton(
                  buttonOnClick: () {   calculate2();},
                  buttonBackgroundColor: Colors.black87,
                  buttonRadius:
                      BorderRadius.only(bottomRight: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.green, fontSize: 34),
                  buttonText: '=',
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  void operatorClick(String _operator) {
    setState(() {
      operator = _operator;
      typedvalue = typedvalue + "$_operator";
      isCliked = true;
    });
  }

  void numberclick(String num) {
    setState(() {
      typedvalue = typedvalue + num;

      // calculate(firstValue:answer=="0"?num:answer, OOperator: operator, CurentValue: num);
 calculate2();
      isCliked = false;
    });
  }

  void calculate2(){ Parser p = Parser();
  String finaluserinput = typedvalue.replaceAll('X', '*');


  Expression exp = p.parse(finaluserinput.trim());
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL, cm);

  setState(() {
    answer = eval.toString();
  });
  }
  void calculate(
      {required String firstValue,
      required String OOperator,
      required String CurentValue}) {
    /// convertion of string to double
    double value1= double.parse(firstValue);

    double value2= double.parse(CurentValue);
    double result=0;
    if(OOperator=="/")
    {
      result= value1/value2;
      setState((){answer=result.toString();});
      ///convertipon of double to string
    }
    else if(OOperator=="X")
    {
      result= value1*value2;
      setState((){answer=result.toString();});
      ///convertipon of double to string
    }
    else if(OOperator=="-")
    {
      result= value1-value2;
      setState((){answer=result.toString();});
      ///convertipon of double to string
    }
    else if(OOperator=="+")
    {
      result= value1+value2;
      setState((){answer=result.toString();});
      ///convertipon of double to string
    }
    else if(OOperator=="%")
    {
      result= value1%value2;
      setState((){answer=result.toString();});
      ///convertipon of double to string
    }

    else{

      print ("no operator is selected");
    }
  }
}
