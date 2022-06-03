import 'package:farmapp/pages/another_design/choose_city.dart';
import 'package:farmapp/pages/another_design/favorites.dart';
import 'package:farmapp/pages/another_design/homepage.dart';
import 'package:farmapp/pages/another_design/product_detail.dart';
import 'package:farmapp/pages/another_design/seller_detail.dart';
import 'package:farmapp/pages/another_design/splash_screen.dart';
import 'package:farmapp/pages/home/main_home_page.dart';
import 'package:farmapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Komşu Pazar',
        theme: ThemeData(
          primaryColor: AppColors.colorPrimary,
          splashColor: Colors.transparent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
        routes: {
          'homepage': (context) => HomePage(),
          'splash': (context) => SplashScreen(),
          'favorites': (context) => FavoritesPage(),
          'city': (context) => ChooseCityPage(),
          'seller': (context) => SellerDetailPage(),
          'product': (context) => ProductDetailPage(),
        });
  }
}
