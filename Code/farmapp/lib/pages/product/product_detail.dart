// ignore_for_file: prefer_const_constructors

import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/utils/dimensions.dart';
import 'package:farmapp/widgets/app_column.dart';
import 'package:farmapp/widgets/app_icon.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/icon_text.dart';
import '../../widgets/small_text.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.productContainerSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/karpuz.jpg"),
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.height20 * 2,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios_new),
                AppIcon(icon: Icons.phone)
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.productContainerSize - Dimensions.height20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20 * 2,
                  right: Dimensions.width20 * 2,
                  bottom: Dimensions.width20 * 2,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white),
              child: AppColumn(text: "Karpuz"),
            ),
          ),
        ],
      ),
    );
  }
}
