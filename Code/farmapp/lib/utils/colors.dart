import 'package:flutter/material.dart';

import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class AppColors {
  // TODO: Please change these colors according to your choice of UI
  // We still do not have UI designs.

  // Primary Color
  //static const Color colorPrimary = Color(0xFF7CB342);

  static const Color colorPrimary = Color(0xFF82A99F);
  static const Color colorSecondary = Color.fromARGB(255, 59, 154, 130);
  static const Color colorCardColors = Color.fromARGB(255, 195, 218, 169);
  static const Color colorTextPrimary = Color.fromARGB(255, 24, 82, 67);

  static const kDarkColor = Color(0xFF000000);
  static const kBackground = Color(0xFFFAE9E1);
  static const kBackground2 = Color(0xFFFFF1C2);
  static const kBlackColor = Color(0xFF1C1F37);
  static const kWhiteColor = Color(0xFFFFFFFF);
  static const kPrimaryColor = Color(0xFF854438);
  static const kButtonColor = Color(0xFFD2AE94);
  static const kGreenColor = Color(0xFF82A99F);
  static const kGreyColor = Color(0xFFBCB9A9);
  static const kLabelColor = Color(0xFFBAAAA6);
  static const kGreyColor2 = Color.fromARGB(255, 73, 73, 72);
  static const kContainerColor = Color(0xFFFFA79E);
  static const kRed = Color(0xFFE60606);
  static const kPinkColor = Color(0xFFF3B7AE);

  static const LinearGradient gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.6, 0.9],
    colors: GradientColors.juicyPeach,
    tileMode: TileMode.mirror,
  );
}
