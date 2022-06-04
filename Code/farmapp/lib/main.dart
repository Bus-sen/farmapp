import 'package:farmapp/pages/another_design/contact_us.dart';
import 'package:farmapp/pages/another_design/favorites.dart';
import 'package:farmapp/pages/another_design/homepage.dart';
import 'package:farmapp/pages/another_design/pdf_viewer.dart';
import 'package:farmapp/pages/another_design/product_detail.dart';
import 'package:farmapp/pages/another_design/seller_detail.dart';
import 'package:farmapp/pages/another_design/splash_screen.dart';
import 'package:farmapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        home: SplashScreen(),
        routes: {
          'homepage': (context) => HomePage(),
          'splash': (context) => SplashScreen(),
          'favorites': (context) => FavoritesPage(),
          'seller': (context) => SellerDetailPage(),
          'pdf': (context) => PDFViewerPage(),
          'contact': (context) => ContactPage(),
          'product': (context) => ProductDetailPage(),
        });
  }
}
