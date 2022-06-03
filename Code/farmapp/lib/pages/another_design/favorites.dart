import 'package:farmapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        title: Text(
          "Favori Tezgahlarım",
          style: TextStyle(color: AppColors.colorBackground),
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            child: Lottie.network(
                "https://assets6.lottiefiles.com/packages/lf20_sgn7zslb.json"),
          ),
        ],
      ),
    );
  }
}
