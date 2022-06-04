import 'package:farmapp/utils/colors.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

import 'package:farmapp/utils/globals.dart' as globals;
import 'package:url_launcher/url_launcher.dart';

import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_text.dart';
import '../../widgets/normal_text.dart';
import '../../widgets/small_text.dart';
import '../../widgets/text_widget.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(globals.selectedProduct.title),
        backgroundColor: AppColors.colorPrimary,
      ),
      body: Center(
        child: Column(
          children: [
            BigText(
                size: Dimensions.font26, text: globals.selectedProduct.title),
            SizedBox(
              height: Dimensions.height10,
            ),
            Padding(
              padding: Dimensions.horizontalPadding,
              child: _image(),
            ),
            SizedBox(
              height: Dimensions.height10 / 2,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Padding(
                padding: Dimensions.horizontalPadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NormalText(text: "Satıcı: "),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        BigText(text: globals.selectedSeller.title),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NormalText(text: "Kilogram Fiyatı: "),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        BigText(text: globals.selectedProduct.price)
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height20 * 2,
                    ),
                    BigText(text: "Açıklama:"),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    BigText(
                      text: globals.selectedProduct.summary,
                      color: AppColors.colorTextPrimary,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          GestureDetector(
            onTap: () async {
              String text = "Merhabalar, Komşu Pazar'da yer almak istiyorum!";
              String uriText = Uri.encodeComponent(text);
              String telephoneNumber = globals.selectedSeller.phone;
              String telephoneUrl = "https://wa.me/" + telephoneNumber;

              var whatsappUrl = telephoneUrl + "?text=" + uriText;
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
            globals.selectedProduct.image,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
