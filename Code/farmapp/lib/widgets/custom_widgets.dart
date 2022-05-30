import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';

class CustomWidgets {
  static Container customNavigationBar = Container(
    child: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Belgelerim"),
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Profilim"),
    ]),
  );

  static CircularProgressIndicator loadingIndicator = CircularProgressIndicator(
    color: AppColors.colorPrimary,
  );

  static Center centeredLoadingIndicator = Center(child: loadingIndicator);

  static ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: AppColors.colorPrimary,
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: Dimensions.font20 * 0.8,
    ),
    shape: Dimensions.roundedRectangleBorder,
    padding: EdgeInsets.all(Dimensions.height10 / 2),
  );

  static ButtonStyle buttonStyleLight = ElevatedButton.styleFrom(
    primary: Colors.lightBlue,
    onPrimary: Colors.white,
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: Dimensions.font20 * 0.8,
    ),
    shape: Dimensions.roundedRectangleBorder,
    padding: EdgeInsets.all(Dimensions.height10 / 2),
  );

  static ButtonStyle buttonStyleDark = ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 11, 38, 101),
    onPrimary: Colors.white,
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: Dimensions.font20 * 0.8,
    ),
    shape: Dimensions.roundedRectangleBorder,
    padding: EdgeInsets.all(Dimensions.height10 / 2),
  );

  static Column header = Column(
    children: [
      Center(
        child: BigText(
          text: "Komşu Pazar",
          color: AppColors.colorPrimary,
          size: Dimensions.font26,
        ),
      ),
      Center(
        child: Text(
          "Çiftçiye can suyu sağlama broşürünüz",
          style: TextStyle(
              color: AppColors.colorPrimary, fontSize: Dimensions.font20 * 0.8),
        ),
      ),
    ],
  );
}
