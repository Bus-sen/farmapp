// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/utils/dimensions.dart';
import 'package:farmapp/widgets/app_column.dart';
import 'package:farmapp/widgets/app_icon.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:farmapp/widgets/expandable_text_widget.dart';
import 'package:farmapp/widgets/normal_text.dart';
import 'package:farmapp/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/icon_text.dart';
import '../../widgets/small_text.dart';

class ProductDetailOther extends StatelessWidget {
  const ProductDetailOther({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Background image:
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

            //AppIcons:
            Positioned(
              top: Dimensions.height20 * 2,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios_new),
                  AppIcon(icon: Icons.favorite_border),
                ],
              ),
            ),

            //Introduction title:
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
                    color: AppColors.colorCardColors,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(5, 0),
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Karpuz"),
                    SizedBox(
                      height: Dimensions.width20 * 2,
                    ),
                    BigText(text: "Detaylar"),
                    SizedBox(
                      height: Dimensions.width20,
                    ),

                    //TODO: burayı scrollable yapacağız.
                    TextWidget(
                      text:
                          "Vücudun nem dengesini korumaya yardımcı olan karpuz kendinizi zinde hissetmenize yardımcı olur.Yaz aylarında ara öğünlerde sade veya yanında yoğurt, peynir grubuyla beraber tüketmek sofralarınızı canlandırır.Diğer meyvelerle blenderdan geçirilip soğuk içecekler hazırlanabilir. Dondurularak da dondurma şeklinde tüketmek lezzetli bir alternatif olacaktır.",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: Dimensions.height20 * 6,
        padding: EdgeInsets.only(
            top: Dimensions.height20, bottom: Dimensions.height10),
        decoration: BoxDecoration(
          color: AppColors.colorPrimary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height10,
              bottom: Dimensions.height10,
              right: Dimensions.width20 * 2,
              left: Dimensions.width20 * 2,
            ),
            child: IconTextWidget(
              icon: Icons.facebook,
              text: "Websitesi",
              iconColor: AppColors.colorPrimary,
              size: Dimensions.iconSize20 * 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white.withOpacity(0.9),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height10,
              bottom: Dimensions.height10,
              right: Dimensions.width20 * 2,
              left: Dimensions.width20 * 2,
            ),
            child: IconTextWidget(
              icon: Icons.whatsapp,
              text: "Whatsapp",
              iconColor: AppColors.colorPrimary,
              size: Dimensions.iconSize20 * 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white.withOpacity(0.9),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
