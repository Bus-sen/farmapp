// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:farmapp/utils/dimensions.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:farmapp/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/colors.dart';
import 'icon_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(Icons.star,
                      size: Dimensions.iconSize20,
                      color: AppColors.colorPrimary)),
            ),
            SizedBox(
              width: 5,
            ),
            SmallText(text: "4.9"),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "122"),
            SizedBox(
              width: Dimensions.width10 / 2,
            ),
            SmallText(text: "yorum")
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextWidget(
              icon: Icons.circle_sharp,
              text: "Meyve",
              iconColor: AppColors.colorPrimary,
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            IconTextWidget(
              icon: Icons.location_pin,
              text: "Serik",
              iconColor: AppColors.colorPrimary,
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            IconTextWidget(
              icon: Icons.monetization_on_sharp,
              text: "24 TL",
              iconColor: AppColors.colorPrimary,
            ),
          ],
        ),
      ],
    );
  }
}
