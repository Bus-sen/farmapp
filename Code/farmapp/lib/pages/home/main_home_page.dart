// ignore_for_file: prefer_const_constructors

import 'package:farmapp/pages/home/product_page.dart';
import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:farmapp/widgets/normal_text.dart';
import 'package:farmapp/widgets/semi_big_text.dart';
import 'package:farmapp/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/header.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    print("Height: " + MediaQuery.of(context).size.height.toString());

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              //Header(),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 15),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            BigText(text: "Antalya"),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.colorPrimary,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            NormalText(text: "Komşu Ayşe Teyze"),
                            Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.colorTextPrimary,
                            ),
                          ],
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Icon(Icons.search,
                            color: AppColors.colorTextPrimary),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.colorPrimary,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white30),
                child: Column(
                  children: [
                    BigText(
                        text: "Öne Çıkanlar",
                        color: AppColors.colorTextPrimary),
                    ProductPageBody(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
