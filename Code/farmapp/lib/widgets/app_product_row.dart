// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'icon_text.dart';

class AppProductRow extends StatelessWidget {
  final String price;
  final String type;
  double size;
  AppProductRow(
      {Key? key, required this.price, required this.type, this.size = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconTextWidget(
          icon: Icons.money,
          text: price,
          iconColor: AppColors.colorBackground,
          size: size,
          textColor: AppColors.colorBackground,
        ),
        SizedBox(
          width: Dimensions.width10,
        ),
        IconTextWidget(
          icon: Icons.auto_awesome,
          text: type,
          iconColor: AppColors.colorBackground,
          size: size,
          textColor: AppColors.colorBackground,
        ),
      ],
    );
  }
}
