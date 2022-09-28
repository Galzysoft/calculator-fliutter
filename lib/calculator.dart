import 'package:calculator/widgets/calcButton.dart';
import 'package:calculator/widgets/display.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String value = "";
  String typedvalue = "";
  String operator = "";
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
            value: value,
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
                      value = "0";
                      typedvalue = "";
                    });
                  },
                  buttonBackgroundColor: Colors.black87,
                  buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.pink, fontSize: 34),
                  buttonText: 'C',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {operatorClick("/");},
                  buttonBackgroundColor: Colors.black87,
                  // buttonRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.pink, fontSize: 34),
                  buttonText: '/',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {operatorClick("X");},
                  buttonBackgroundColor: Colors.black87,
                  // buttonRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.pink, fontSize: 34),
                  buttonText: 'X',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {
                    setState(() {
                      typedvalue = typedvalue.substring(0, typedvalue.length-1);
                    });
                  },
                  buttonBackgroundColor: Colors.black87,
                  buttonRadius:
                      BorderRadius.only(topRight: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.pink, fontSize: 34),
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
                  buttonBackgroundColor: Colors.pink,
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
                  buttonBackgroundColor: Colors.pink,
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
                  buttonBackgroundColor: Colors.pink,
                  // buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  buttonTextstyle:
                      TextStyle(color: Colors.black87, fontSize: 34),
                  buttonText: '9',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {operatorClick("-");},
                  buttonBackgroundColor: Colors.black87,
                  // buttonRadius: BorderRadius.only(topRight: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.pink, fontSize: 34),
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
                  buttonBackgroundColor: Colors.pink,
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
                  buttonBackgroundColor: Colors.pink,
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
                  buttonBackgroundColor: Colors.pink,
                  // buttonRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  buttonTextstyle:
                      TextStyle(color: Colors.black87, fontSize: 34),
                  buttonText: '6',
                ),
              ),
              Expanded(
                child: CalcButton(
                  buttonOnClick: () {},
                  buttonBackgroundColor: Colors.black87,
                  // buttonRadius: BorderRadius.only(topRight: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.pink, fontSize: 34),
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
                              buttonBackgroundColor: Colors.pink,
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
                              buttonBackgroundColor: Colors.pink,
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
                              buttonBackgroundColor: Colors.pink,
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
                              buttonOnClick: () {operatorClick("%");},
                              buttonBackgroundColor: Colors.pink,
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
                              buttonBackgroundColor: Colors.pink,
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
                              buttonBackgroundColor: Colors.pink,
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
                  buttonOnClick: () {},
                  buttonBackgroundColor: Colors.black87,
                  buttonRadius:
                      BorderRadius.only(bottomRight: Radius.circular(20)),
                  buttonTextstyle: TextStyle(color: Colors.pink, fontSize: 34),
                  buttonText: '=',
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  void operatorClick(String _operator){
    if(!typedvalue.endsWith(" $_operator ")) {
      setState(() {
        operator = _operator;
        typedvalue = typedvalue + " $_operator ";
      });
    }
  }

  void numberclick(String num) {
    setState(() {
      typedvalue = typedvalue +num;
    });
  }
}
