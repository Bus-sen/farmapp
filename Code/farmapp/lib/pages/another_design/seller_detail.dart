import 'dart:io';

import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/widgets/app_product_row.dart';
import 'package:farmapp/widgets/app_seller_row.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:farmapp/widgets/custom_widgets.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:farmapp/utils/globals.dart' as globals;
import 'package:url_launcher/url_launcher_string.dart';

import '../../data/data.dart';
import '../../data/product.dart';
import '../../utils/dimensions.dart';
import '../../widgets/icon_text.dart';
import '../../widgets/small_text.dart';

class SellerDetailPage extends StatefulWidget {
  const SellerDetailPage({Key? key}) : super(key: key);

  @override
  State<SellerDetailPage> createState() => _SellerDetailPageState();
}

class _SellerDetailPageState extends State<SellerDetailPage> {
  @override
  Widget build(BuildContext context) {
    bool isFavorite = false;
    globals.favorites.contains(globals.selectedSeller)
        ? (isFavorite = true)
        : (isFavorite = false);
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        title: Text("Komşu Pazar"),
        actions: [
          FavoriteButton(
              isFavorite: isFavorite,
              iconColor: AppColors.colorTextPrimary,
              iconDisabledColor: Colors.white,
              valueChanged: (_isFavorite) {
                globals.favorites.contains(globals.selectedSeller)
                    ? globals.favorites.remove(globals.selectedSeller)
                    : globals.favorites.add(globals.selectedSeller);
                ;
              }),
          SizedBox(
            width: Dimensions.width10,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: Dimensions.horizontalPadding,
            child: Column(
              children: [
                CustomWidgets.spacer,
                Center(
                  child: Text(
                    globals.selectedSeller.title,
                    style: TextStyle(
                      fontSize: Dimensions.font26,
                      fontWeight: FontWeight.bold,
                      color: AppColors.colorPrimary,
                    ),
                  ),
                ),
                _image(),
                CustomWidgets.spacer,
                _sellerInfoRow(),
                CustomWidgets.spacer,
                _productsHeader(),
                CustomWidgets.spacer,
                _listviewBuilder(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          GestureDetector(
            onTap: () async {
              String text = "Merhabalar, Komşu Pazar'dan geliyorum";
              print("buradayım, telefon: " + globals.selectedSeller.phone);
              String telephoneNumber = '90' + globals.selectedSeller.phone;
              String telephoneUrl = "https://wa.me/" + telephoneNumber;

              var whatsappUrl =
                  telephoneUrl + "&text=${Uri.encodeComponent(text)}";
              try {
                launch(whatsappUrl);
              } catch (e) {
                //To handle error and display error message
              }
            },
            child: Container(
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
          ),
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height10,
              bottom: Dimensions.height10,
              right: Dimensions.width20 * 2,
              left: Dimensions.width20 * 2,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('pdf');
              },
              child: IconTextWidget(
                icon: Icons.remove_red_eye_outlined,
                text: "Broşür",
                iconColor: AppColors.colorPrimary,
                size: Dimensions.iconSize20 * 2,
              ),
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
        SizedBox(
          height: Dimensions.height15,
        ),
      ]),
    );
  }
}

ListView _listviewBuilder() {
  var productList = globals.selectedSeller.products;
  return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: productList.length,
      itemBuilder: (context, index) {
        ;
        return new GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                bottom: Dimensions.height10),
            child: Row(children: [
              _thumbnail(productList[index].image),
              Expanded(
                child: Container(
                  height: Dimensions.listViewImgSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: AppColors.colorPrimary,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: Dimensions.width10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigText(
                          text: productList[index].title,
                          color: AppColors.colorBackground,
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        SmallText(
                          text: productList[index].summary,
                          color: AppColors.colorBackground,
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        AppProductRow(
                            price: productList[index].price,
                            type: productList[index].type)
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        );
      });
}

Container _thumbnail(String image) {
  return Container(
    height: Dimensions.listViewImgSize,
    width: Dimensions.listViewImgSize,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(Dimensions.radius20),
        bottomLeft: Radius.circular(Dimensions.radius20),
      ),
      color: Colors.white,
      image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
    ),
  );
}

class _productsHeader extends StatelessWidget {
  const _productsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BigText(
      text: "Ürünler",
      size: Dimensions.font26,
    );
  }
}

class _sellerInfoRow extends StatelessWidget {
  const _sellerInfoRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSellerRow(
      location: globals.selectedSeller.city,
      type: globals.selectedSeller.type,
      size: Dimensions.font26 * 1.2,
    );
  }
}

class _image extends StatelessWidget {
  const _image({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
          Radius.circular(Dimensions.radius20),
        ),
        child: Container(
          height: Dimensions.screenHeight / 5,
          child: Image.network(
            globals.selectedSeller.image,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
