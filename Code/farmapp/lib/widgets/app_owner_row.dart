// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'icon_text.dart';

class AppOwnerRow extends StatelessWidget {
  final String location;
  final String type;
  const AppOwnerRow({Key? key, required this.location, required this.type})
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
          icon: Icons.person,
          text: type,
          iconColor: AppColors.colorPrimary,
        ),
      ],
    );
  }
}
