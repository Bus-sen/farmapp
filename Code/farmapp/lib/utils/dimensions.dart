import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // ratios
  static double x = 2.65;
  static double y = 3.84;
  static double z = 7.03;

  static double pageView = screenHeight / x;
  static double pageViewContainer = screenHeight / y;
  static double pageViewTextContainer = screenHeight / z;

  static double height10 = screenHeight / 84;
  static double height15 = screenHeight / 56;
  static double height20 = screenHeight / 42;

  static double width10 = screenWidth / 84;
  static double width15 = screenWidth / 56;
  static double width20 = screenWidth / 42;
  static double width30 = screenWidth / 28;

  static double font20 = screenHeight / 42;
  static double font26 = screenHeight / 32;

  static double radius20 = screenHeight / 42;

  static double iconSize20 = screenHeight / 40;

  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContainerSize = screenWidth / 4;

  static double productContainerSize = screenHeight / 2.5;

  static EdgeInsets cardMargin = EdgeInsets.all(height10);
  static EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: height20);
  static RoundedRectangleBorder roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius20));

  static TextStyle defaultStyle = TextStyle(color: Colors.black45);
  static TextStyle linkStyle = TextStyle(color: Colors.black);
  static TextStyle lightStyle = TextStyle(color: Colors.white);

  static TextStyle lightStyleHint = TextStyle(color: Colors.white60);
}
