// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:dots_indicator/dots_indicator.dart';
import 'package:farmapp/pages/home/main_home_page.dart';
import 'dart:developer';
import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/utils/dimensions.dart';
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

  //dbestech referansı, 1.50 civarı, birisi slider'ı düzgün
  //implemente etmeli, ama zaruri değil, mvp yapıyoruz:
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;
  double _heightText = Dimensions.pageViewTextContainer;

  @override
  void initState() {
    //current page value'yu alacağız
    super.initState();
    //! koymak onun null olamayacağını gösterecek
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        // tamam çalışıyor.
        //log("curr page: " + _currPageValue.toString());
      });
    });
  }

//sayfadan çıkınca dispose etmen lazım
  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // TODO: heightlar hardcoded olmamalı
          height: _height * 1.3,
          child: PageView.builder(
            //şimdilik 5 tane yukarıda item gösterelim
            controller: pageController,

            itemCount: 5,

            //indeximiz position
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(children: [
            BigText(
              text: "Tezgah Listesi",
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
          ]),
        ),

        // tezgah listesi:

        Container(
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      bottom: Dimensions.height10),
                  child: Row(children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white38,
                        image: DecorationImage(
                          image: AssetImage("assets/images/biber.jpg"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.width10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(
                                text: "Komşu Ayşe Tezgah'ın Elinden",
                              ),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              SmallText(
                                  text:
                                      "Antalya'da gün içi teslimat mümkündür"),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                    iconColor: AppColors.colorPrimary,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                );
              }),
        ),
      ],
    );
  }

  Widget _buildPageItem(int position) {
    Matrix4 matrix = new Matrix4.identity();

    if (position == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - position) * (1 - _scaleFactor);

      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    } else if (position == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - position + 1) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: _height,
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/karpuz.jpg")),
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
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: _heightText,
              margin: EdgeInsets.only(left: 45, right: 45, bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  //renkleri düzgün seçelim
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 1.0,
                      offset: Offset(0, 5),
                    )
                  ]),
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Karpuz"),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(Icons.star,
                                  size: 12, color: AppColors.colorPrimary)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SmallText(text: "4.9"),
                        SizedBox(
                          width: 10,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          iconColor: AppColors.colorPrimary,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
