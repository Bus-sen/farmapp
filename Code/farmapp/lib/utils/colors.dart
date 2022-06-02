import 'package:flutter/material.dart';

import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class AppColors {
  static const Color colorPrimary = Color.fromARGB(255, 98, 148, 125);
  static const Color colorSecondary = Color(0xFFD9534F);
  static const Color colorCardColors = Color(0xFFFFEEAD);
  static const Color colorTextPrimary = Color(0xFFFFAD60);

  static const Color colorBackground = Color.fromARGB(255, 248, 246, 234);
  static const Color colorFav = Color.fromARGB(255, 180, 73, 69);

  static const LinearGradient gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.6, 0.9],
    colors: GradientColors.juicyPeach,
    tileMode: TileMode.mirror,
  );
}
