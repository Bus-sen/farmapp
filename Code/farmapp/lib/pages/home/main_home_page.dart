// ignore_for_file: prefer_const_constructors

import 'package:farmapp/data/data.dart';
import 'package:farmapp/pages/home/product_page.dart';
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

import '../../widgets/header.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  String dropdownvalue = 'Antalya';
  var cities = Data.cities;

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
                              children: [
                                DropdownButton(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft:
                                        Radius.circular(Dimensions.radius20),
                                    bottomRight:
                                        Radius.circular(Dimensions.radius20),
                                    topRight:
                                        Radius.circular(Dimensions.radius20),
                                  ),
                                  // Initial Value
                                  value: dropdownvalue,

                                  // Down Arrow Icon
                                  icon: const Icon(Icons.keyboard_arrow_down),

                                  // Array list of items
                                  items: cities.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: BigText(text: items),
                                    );
                                  }).toList(),
                                  // After selecting the desired option,it will
                                  // change button value to selected value
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ],
                            ),
                            /*Row(
                              children: [
                                NormalText(text: "Komşu Ayşe Teyze"),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColors.colorTextPrimary,
                                ),
                              ],
                            )*/
                          ],
                        ),
                        Center(
                          child: Container(
                            width: 40,
                            height: 40,
                            child: Icon(Icons.search,
                                color: Colors.white,
                                size: Dimensions.iconSize20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.colorPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  child: ProductPageBody(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
