import 'package:flutter/material.dart';

import '../constants.dart';

class BottomContainer extends StatelessWidget {
  BottomContainer({
    this.press,
    this.text,
    this.color,
    this.textcolor,
  });
  final Function press;
  final String text;
  final Color color;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 30.0),
        margin: EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [kBoxShadow],
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18.0,
              letterSpacing: 1.5,
              color: textcolor,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
