// ignore_for_file: prefer_const_constructors

import 'package:farmapp/data/data.dart';
import 'package:farmapp/pages/home/product_page.dart';
import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/utils/dimensions.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
          backgroundColor: AppColors.colorPrimary,
          leading: Padding(
            padding: EdgeInsets.only(
                left: Dimensions.width20,
                bottom: Dimensions.height10,
                top: Dimensions.height10 / 5),
            child: Row(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: Dimensions.width10 * 4,
                    minHeight: Dimensions.height10 * 4,
                    maxWidth: Dimensions.width20 * 8,
                    maxHeight: Dimensions.height20 * 8,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                //gradient: AppColors.gradient,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Dimensions.radius20),
                    bottomRight: Radius.circular(Dimensions.radius20)),
                //renkleri düzgün seçelim
                /* color: position.isEven
                    ? Color.fromARGB(255, 174, 207, 136)
                    : Color.fromARGB(255, 99, 129, 65),
                    */
              ),
              margin: EdgeInsets.only(top: 0, bottom: 0),
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
                              Container(
                                padding: EdgeInsets.only(
                                    left: Dimensions.width10,
                                    right: Dimensions.width10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: DropdownButton(
                                  dropdownColor: AppColors.colorPrimary,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft:
                                        Radius.circular(Dimensions.radius20),
                                    bottomRight:
                                        Radius.circular(Dimensions.radius20),
                                    topLeft:
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
                                      child: BigText(
                                        text: items,
                                        color: Colors.white,
                                      ),
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
                      /*Center(
                    child: 
                  ),*/
                    ],
                  ),
                ],
              ),
            ),
          ]),
      body: SafeArea(
        child: Container(
          //decoration: BoxDecoration(gradient: AppColors.gradient),
          child: Column(
            children: [
              //Header(),

              Container(
                decoration: BoxDecoration(
                  //gradient: AppColors.gradient,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20)),
                  //renkleri düzgün seçelim
                  /* color: position.isEven
                    ? Color.fromARGB(255, 174, 207, 136)
                    : Color.fromARGB(255, 99, 129, 65),
                    */
                ),
                margin: EdgeInsets.only(top: 20, bottom: 0),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 15, bottom: 5),
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: DropdownButton(
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
                            margin: EdgeInsets.only(top: 15, bottom: 0),
                            padding: EdgeInsets.only(
                              left: Dimensions.width20 * 2,
                              right: Dimensions.width20 * 2,
                            ),
                            height: Dimensions.height20 * 2,
                            child: Icon(Icons.search,
                                color: AppColors.colorPrimary,
                                size: Dimensions.iconSize20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  */
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
