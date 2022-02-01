import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  double? size;
  TextOverflow? overflow = TextOverflow.ellipsis;

  BigText(
      {Key? key,
      required this.text,
      this.color = const Color(0xFFccc7c5),
      this.size = 24,
      this.overflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
      ),
    );
  }
}
