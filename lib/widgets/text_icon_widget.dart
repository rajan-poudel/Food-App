import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class TextIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  double? size;
  TextIcon(
      {Key? key,
      required this.text,
      required this.icon,
      this.iconColor = const Color(0xFFffd379),
      this.size = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: size,
            color: AppColors.textColor,
          ),
        )
      ],
    );
  }
}
