import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String value;
  final String trypedvalue;
  Display({
    Key? key,
    required this.value, required this.trypedvalue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height:double.infinity,
        width: double.infinity,
        child: Card(
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(flex: 3,
                  child: Text(
                    trypedvalue,maxLines: 5,
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black45),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
