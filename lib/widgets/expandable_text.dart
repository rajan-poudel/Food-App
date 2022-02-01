import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddentext = true;

  double textHeight = 100.0;
  @override
  void initState() {
    super.initState();
    print(widget.text.length);
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;

      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              text: firstHalf,
              size: 18,
              color: AppColors.paraColor,
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(
                  text: hiddentext
                      ? (firstHalf + "...")
                      : (firstHalf + secondHalf),
                  color: AppColors.textColor,
                  size: 18,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddentext = !hiddentext;
                    });
                  },
                  child: Row(
                    children: [
                      hiddentext
                          ? SmallText(text: "Show more")
                          : SmallText(text: "Show less"),
                      Icon(hiddentext
                          ? Icons.arrow_drop_down
                          : Icons.arrow_drop_up)
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
