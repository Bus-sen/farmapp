import 'package:flutter/material.dart';

import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class AppColors {
  // TODO: Please change these colors according to your choice of UI
  // We still do not have UI designs.

  // Primary Color
  //static const Color colorPrimary = Color(0xFF7CB342);

  static const Color colorPrimary = Color(0xFF96CEB4);
  static const Color colorSecondary = Color(0xFFFFEEAD);
  static const Color colorCardColors = Color(0xFFD9534F);
  static const Color colorTextPrimary = Color(0xFFFFAD60);
  static const Color colorFav = Color.fromARGB(255, 180, 73, 69);

  static const LinearGradient gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.6, 0.9],
    colors: GradientColors.juicyPeach,
    tileMode: TileMode.mirror,
  );
}
