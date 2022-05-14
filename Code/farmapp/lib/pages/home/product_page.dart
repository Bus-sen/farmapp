// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:farmapp/widgets/icon_text.dart';
import 'package:farmapp/widgets/normal_text.dart';
import 'package:farmapp/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductPageBody extends StatefulWidget {
  const ProductPageBody({Key? key}) : super(key: key);

  @override
  State<ProductPageBody> createState() => _ProductPageBodyState();
}

class _ProductPageBodyState extends State<ProductPageBody> {
  PageController pageController = PageController(viewportFraction: 0.75);

  @override
  Widget build(BuildContext context) {
    return Container(
      // TODO: heightlar hardcoded olmamalı
      height: 320,
      child: PageView.builder(
        //şimdilik 5 tane yukarıda item gösterelim
        controller: pageController,

        itemCount: 5,

        //indeximiz position
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int position) {
    return Stack(
      children: [
        Container(
          height: 250,
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/karpuz.jpg")),

              //renkleri düzgün seçelim
              color: position.isEven
                  ? Color.fromARGB(255, 174, 207, 136)
                  : Color.fromARGB(255, 99, 129, 65)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 45, right: 45, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              //renkleri düzgün seçelim
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Karpuz"),
                  SizedBox(height: 10),
                  Row(
                    // TODO: sized box widget yapalım sürekli kullanmalık

                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => Icon(Icons.star,
                                size: 12, color: AppColors.colorPrimary)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "5"),
                      SizedBox(
                        width: 20,
                      ),
                      SmallText(text: "122"),
                      SizedBox(
                        width: 5,
                      ),
                      SmallText(text: "yorum")
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      IconTextWidget(
                        icon: Icons.circle_sharp,
                        text: "Meyve",
                        iconColor: AppColors.colorPrimary,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconTextWidget(
                        icon: Icons.location_pin,
                        text: "Serik",
                        iconColor: AppColors.colorStarted,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
