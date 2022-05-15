// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'icon_text.dart';

class AppRow extends StatelessWidget {
  final String location;
  final String money;
  const AppRow({Key? key, required this.location, required this.money})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconTextWidget(
          icon: Icons.location_pin,
          text: location,
          iconColor: AppColors.colorPrimary,
        ),
        SizedBox(
          width: Dimensions.width10,
        ),
        IconTextWidget(
          icon: Icons.monetization_on_sharp,
          text: money,
          iconColor: AppColors.colorPrimary,
        ),
      ],
    );
  }
}
