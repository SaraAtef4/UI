import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CostumizedLabel extends StatelessWidget{
  String text;
  CostumizedLabel({required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

}