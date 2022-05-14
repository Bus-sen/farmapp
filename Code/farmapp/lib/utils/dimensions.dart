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

// todo: sized boxları bu standartlara çevirelim, width de yapalım.
// 2:20 civarı
  static double height10 = screenHeight / 84;
  static double height15 = screenHeight / 56;
  static double height20 = screenHeight / 42;

  static double width10 = screenWidth / 84;
  static double width15 = screenWidth / 56;
  static double width20 = screenWidth / 42;
  static double width30 = screenWidth / 28;

  static double font20 = screenHeight / 42;
  static double radius20 = screenHeight / 42;

  static double iconSize20 = screenHeight / 40;
}
