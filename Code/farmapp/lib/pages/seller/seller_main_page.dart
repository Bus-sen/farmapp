// ignore_for_file: prefer_const_constructors

import 'package:farmapp/data/data.dart';
import 'package:farmapp/pages/home/product_page.dart';
import 'package:farmapp/pages/seller/seller_detail_page.dart';
import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/utils/dimensions.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:farmapp/widgets/normal_text.dart';
import 'package:farmapp/widgets/semi_big_text.dart';
import 'package:farmapp/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:favorite_button/favorite_button.dart';

import '../../widgets/header.dart';

class SellerMainPage extends StatefulWidget {
  const SellerMainPage({Key? key}) : super(key: key);

  @override
  State<SellerMainPage> createState() => _SellerMainPageState();
}

class _SellerMainPageState extends State<SellerMainPage> {
  @override
  Widget build(BuildContext context) {
    print("Height: " + MediaQuery.of(context).size.height.toString());

    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.colorPrimary, actions: [
        Center(
          child: BigText(
            text: "Ayşe Teyze Ürünleri",
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: Dimensions.screenWidth / 7,
        ),
        Container(
          padding: EdgeInsets.all(Dimensions.x),
          child: FavoriteButton(
            isFavorite: false,
            iconDisabledColor: Colors.white,
            valueChanged: (_isFavorite) {},
          ),
        ),
      ]),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              //Header(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(Dimensions.radius20),
                        bottomRight: Radius.circular(Dimensions.radius20)),
                    color: Colors.white,
                    //renkleri düzgün seçelim
                    /* color: position.isEven
                    ? Color.fromARGB(255, 174, 207, 136)
                    : Color.fromARGB(255, 99, 129, 65),
                    */
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5),
                      )
                    ]),
                margin: EdgeInsets.only(top: 15, bottom: 15),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  child: SellerDetailBody(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
