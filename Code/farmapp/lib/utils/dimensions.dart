import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // ratios
  static double x = 2;
  static double y = 4;

  static double pageViewContainer = screenHeight / x;
  static double pageViewTextContainer = screenHeight / y;
}
