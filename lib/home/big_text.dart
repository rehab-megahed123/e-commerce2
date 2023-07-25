import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  BigText(
      {this.text = '',
      this.color = const Color(0xfff6e60a),
      this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
