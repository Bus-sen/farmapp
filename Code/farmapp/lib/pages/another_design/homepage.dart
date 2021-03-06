import 'package:carousel_slider/carousel_slider.dart';
import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/utils/dimensions.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:farmapp/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../data/data.dart';
import 'package:farmapp/utils/globals.dart' as globals;

import '../../data/seller.dart';
import '../../widgets/app_seller_row.dart';
import '../../widgets/small_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Seller> sellerList = Data.sellerList;

  @override
  Widget build(BuildContext context) {
    String dropdownvalue = globals.city;
    globals.imageSize = MediaQuery.of(context).size.height / 5;
    var cities = Data.availableCities;
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
          title: Text("Komşu Pazar"),
          backgroundColor: AppColors.colorPrimary,
          actions: [
            _dropdownCity(dropdownvalue, cities),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("favorites");
                },
                child: Icon(Icons.favorite)),
            SizedBox(
              width: Dimensions.width10,
            )
          ]),
      body: ListView(
        children: [
          Column(
            children: [
              CustomWidgets.spacer,
              BigText(
                text: "Öne Çıkanlar",
                size: Dimensions.font26,
              ),
              CustomWidgets.spacer,
              _carouselWidget(),
              CustomWidgets.spacer,
              BigText(
                text: "Tezgahlar",
                size: Dimensions.font26,
              ),
              CustomWidgets.spacer,
              _listviewBuilder(),
            ],
          ),
        ],
      ),
    );
  }

  Container _dropdownCity(String dropdownvalue, List<String> cities) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Dimensions.radius20),
            bottomRight: Radius.circular(Dimensions.radius20)),
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
                            bottomLeft: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                            topLeft: Radius.circular(Dimensions.radius20),
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
                          onChanged: (String? newValue) {
                            setState(() {
                              globals.city = newValue!;
                              dropdownvalue = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  ListView _listviewBuilder() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: sellerList.length,
        itemBuilder: (context, index) {
          return (sellerList[index].region == globals.city)
              ? (new GestureDetector(
                  onTap: () {
                    // TODO: buraya route eklemek lazım
                    globals.selectedSeller = sellerList[index];
                    print("Şuna tıklandı: " + sellerList[index].title);
                    Navigator.of(context).pushNamed('seller');
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20,
                        right: Dimensions.width20,
                        bottom: Dimensions.height10),
                    child: Row(children: [
                      _thumbnail(index),
                      Expanded(
                        child: Container(
                          height: globals.imageSize,
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
                                  text: sellerList[index].title,
                                ),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                SmallText(text: sellerList[index].summary),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                AppSellerRow(
                                    location: sellerList[index].city,
                                    type: sellerList[index].type)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ))
              : Container();
        });
  }

  Container _thumbnail(int index) {
    return Container(
      height: globals.imageSize,
      width: globals.imageSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius20),
          bottomLeft: Radius.circular(Dimensions.radius20),
        ),
        color: Colors.white,
        image: DecorationImage(
            image: NetworkImage(Data.sellerList[index].image),
            fit: BoxFit.cover),
      ),
    );
  }

  CarouselSlider _carouselWidget() {
    List<Seller> topSellers = [];
    for (int i = 0; i < sellerList.length; i++) {
      if (sellerList[i].region == globals.city) {
        topSellers.add(sellerList[i]);
      }
    }
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        scrollDirection: Axis.vertical,
        onPageChanged: (index, reason) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
      items: topSellers
          .map(
            (item) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                ),
                elevation: 6.0,
                shadowColor: AppColors.colorPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  child: Stack(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: () {
                          globals.selectedSeller = topSellers[_currentIndex];
                          print("Şuna tıklandı: " +
                              topSellers[_currentIndex].title);
                          Navigator.of(context).pushNamed('seller');
                        },
                        child: Image.network(
                          item.image,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Center(
                        child: new GestureDetector(
                          onTap: () {
                            globals.selectedSeller = topSellers[_currentIndex];
                            print("Şuna tıklandı: " +
                                topSellers[_currentIndex].title);
                            Navigator.of(context).pushNamed('seller');
                          },
                          child: Text(
                            '${topSellers[_currentIndex].title}',
                            style: TextStyle(
                              fontSize: Dimensions.font26,
                              fontWeight: FontWeight.bold,
                              backgroundColor:
                                  AppColors.colorPrimary.withOpacity(0.8),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
