import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:food_delivery/widgets/text_icon_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          color: AppColors.titleColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star_border,
                        color: AppColors.iconColor1,
                      )),
            ),
            const SizedBox(
              width: 5,
            ),
            SmallText(text: "(5.0)")
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextIcon(
              text: "Normal",
              icon: Icons.circle_sharp,
              iconColor: AppColors.iconColor1,
            ),
            TextIcon(
              text: "1.7km",
              icon: Icons.location_on_outlined,
              iconColor: AppColors.mainColor,
            ),
            TextIcon(
              text: "30 min",
              icon: Icons.access_time,
              iconColor: AppColors.iconColor2,
            )
          ],
        ),
      ],
    );
  }
}
