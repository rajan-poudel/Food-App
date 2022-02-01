import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  double? size;
  TextOverflow? overflow = TextOverflow.ellipsis;

  SmallText(
      {Key? key,
      required this.text,
      this.color = const Color(0xFF89dad0),
      this.size = 16,
      this.overflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
