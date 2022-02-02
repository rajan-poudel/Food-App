import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  double? size;
  double height;

  SmallText({
    Key? key,
    required this.text,
    this.color = const Color(0xFF89dad0),
    this.size = 16,
    this.height = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        height: height,
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
      ),
    );
  }
}
